<?php
require('config/db.php');
require('config/config.php');
session_start();

// Get id secure it with mysqli_real_escape_string($conn, $_GET['id']);
$id = $_GET['id'];

// Create query
$query = "SELECT * FROM products WHERE id = $id";

// Get result
$result = mysqli_query($conn, $query);

// Fetch data
$product = mysqli_fetch_array($result);

// // Free Result
mysqli_free_result($result);

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
<div class="row">
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