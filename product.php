<?php
require('config/db.php');
require('config/config.php');
session_start();

// Get id
$id = $_GET['id'];
// Create query
$query = "SELECT * FROM products WHERE id = $id";
// Get result
$result = mysqli_query($conn, $query);
// Fetch data
$product = mysqli_fetch_array($result);
// // Free Result
mysqli_free_result($result);

// Insert Review
$customer_id = $_SESSION['customerId'];
if (isset($_POST["review_submit"])) {
    $customer_name = $_POST['customer_name'];
    $review = $_POST["review"];
    $review_query = "INSERT INTO reviews(product_id, customer_id, customer_name, review) VALUES('$id','$customer_id','$customer_name','$review')";
    if (mysqli_query($conn, $review_query)) {
        header('Location:' . ROOT_URL . "product.php?id=$id");
    } else {
        echo 'Error: ' . mysqli_error($conn);
    }
}

// Get reviews
$reviews_query = "SELECT * FROM reviews WHERE customer_id = $customer_id";
$reviews_result = mysqli_query($conn, $reviews_query);
$reviews = mysqli_fetch_all($reviews_result, MYSQLI_ASSOC);

// Get flags function
function get_flags($flag_id_num)
{
    global $conn;
    $flag_query = "SELECT * FROM flags WHERE id = $flag_id_num";
    $flag_result = mysqli_query($conn, $flag_query);
    return mysqli_fetch_array($flag_result);
}

// Get flag value and display it only when admin is admin for In-Band SQL injection
$flag_two = get_flags(2);

// Get flag value and display when Boolean Based SQL injection successful
$flag_four = get_flags(4);

// Get flag value and display when Time Based SQL injection successfull
$flag_five = get_flags(5);

// Get flag value and display it only when admin is admin for In-Band SQL injection
$flag_seven = get_flags(7);

$this_page_url = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

?>

<!-- Header -->
<?php include("inc/header.php"); ?>

<div id="flag_alert" class="alert alert-success d-flex justify-content-between animate__animated animate__fadeInUp" role="alert">
    <i class="far fa-flag fa-2x"></i>
    <div id="flagAlert"></div>
    <button type="button" class="btn-close" data-bs-dismiss="alert" data-bs-target="#flag_alert" aria-label="Close"></button>
</div>

<!-- Back Button -->
<a href="javascript:history.go(-1)" class="btn btn-outline-secondary mb-3"><i class="fas fa-chevron-left"></i> Back</a>

<!-- Product Image and Information -->
<div class="row my-5">
    <div class="col-6 px-auto">
        <img src="<?php print_r($product['image']); ?>" alt="" style="max-height: 500px;" class="mx-auto d-block">
    </div>
    <div class="col-6 py-5">
        <h1 id="title"><?php print_r($product['title']); ?></h1>
        <p class="my-2"><?php print($product['description']); ?></p>
        <div>
            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i>
        </div>
        <h3 class="mt-2 mb-5">£<?php print_r($product['price']); ?></h3>
        <form action="addtocart.php" method="GET">
            <div class="form-floating mb-3">
                <input type="hidden" name="id" value="<?php print_r($product['id']); ?>">
                <input type="number" name="quantity" class="form-control w-25" value="1" id="quantity">
                <label for="quantity">Quantity</label>
            </div>
            <button type="submit" class="btn btn-outline-primary btn-lg"><i class="fas fa-cart-plus"></i> Add To Cart</button>
        </form>
    </div>
</div>

<!-- Product details and reviews -->
<ul class="nav nav-tabs" id="myTab" role="tablist">
    <li class="nav-item" role="presentation">
        <button class="nav-link active" id="product_details_tab" data-bs-toggle="tab" data-bs-target="#product_details" type="button" role="tab" aria-controls="product_details" aria-selected="true">Details</button>
    </li>
    <li class="nav-item" role="presentation">
        <button class="nav-link" id="reviews_tab" data-bs-toggle="tab" data-bs-target="#reviews" type="button" role="tab" aria-controls="reviews" aria-selected="false">Reviews</button>
    </li>
</ul>
<div class="tab-content" id="myTabContent">
    <div class="tab-pane fade show active" id="product_details" role="tabpanel" aria-labelledby="product_details_tab">
        <div class="my-3"><?php print_r($product['details']); ?></div>
    </div>
    <div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews_tab">
        <div class="my-3">
            <?php if (count($reviews) > 0) : ?>
                <div class="list-group">
                    <?php foreach ($reviews as $review) : ?>
                        <div class="list-group-item list-group-item-action" aria-current="true">
                            <div class="d-flex w-100 justify-content-between">
                                <div class="mb-3">
                                    By <strong><?php print_r($review['customer_name']); ?></strong>
                                </div>
                                <small><?php print_r($review['created_at']); ?></small>
                            </div>
                            <p class="mb-1"><?php print_r($review['review']); ?></p>
                        </div>
                    <?php endforeach; ?>
                </div>
            <?php else : ?>
                There are no reviews for this product!
            <?php endif; ?>
        </div>
    </div>
</div>
<!-- Product Review Form -->
<?php if (isset($_SESSION['customer'])) : ?>
    <hr>
    <form class="mx-auto" id="product_review_form" method="POST" action="<?php $_SERVER['PHP_SELF']; ?>">
        <div class="form-group mb-2">
            <label>Customer Name</label>
            <input id="customer_name" value="<?php echo $_SESSION['customer']; ?>" type="text" name="customer_name" class="form-control" readonly>
        </div>
        <div class="form-group mb-2">
            <label>Product Review</label>
            <textarea id="review" type="text" name="review" class="form-control"></textarea>
        </div>
        <button id="product_form_submit" type="submit" name="review_submit" class="btn btn-outline-success mt-4"><i class="fas fa-thumbs-up"></i> Submit</button>
    </form>
<?php endif; ?>

<!-- flag check -->
<script>
    const title = document.getElementById('title');
    const flagAlert = document.getElementById('flagAlert');

    if (title.innerHTML == "<?php echo $flag_two['flag_answer']; ?>") {
        flagAlert.innerHTML = "<?php echo $flag_two['flag_name']; ?>";
    } else if ("<?php echo $this_page_url; ?>" == "<?php echo ROOT_URL . $flag_four['flag_answer']; ?>") {
        flagAlert.innerHTML = "<?php echo $flag_four['flag_name']; ?>";
    } else if ("<?php echo $this_page_url; ?>" == "<?php echo ROOT_URL . $flag_five['flag_answer']; ?>") {
        flagAlert.innerHTML = "<?php echo $flag_five['flag_name']; ?>";
    } else if (document.getElementById('xss') !== null) {

        flagAlert.innerHTML = "<?php echo $flag_seven['flag_name']; ?>";
    } else {
        document.getElementById('flag_alert').classList.add("d-none");
    }
</script>

<!-- Footer -->
<?php include("inc/footer.php"); ?>