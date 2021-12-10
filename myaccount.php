<?php
require('config/db.php');
require('config/config.php');
session_start();

$customer_id = $_SESSION['customerId'];
$query = "SELECT * FROM orders WHERE customer_id = $customer_id";
$result = mysqli_query($conn, $query);
$order_row = mysqli_fetch_all($result, MYSQLI_ASSOC);

$flag_query = "SELECT * FROM flags WHERE id = 3";
$flag_result = mysqli_query($conn, $flag_query);
$flag = mysqli_fetch_array($flag_result);

?>

<!-- Header and Search Includes -->
<?php include("inc/header.php"); ?>

<?php if (isset($_SESSION['customer'])) : ?>
    <div id="flag_alert" class="alert alert-success d-flex justify-content-between animate__animated animate__fadeInUp" role="alert">
        <i class="far fa-flag fa-2x"></i>
        <div id="flagAlert"></div>
        <button type="button" class="btn-close" data-bs-dismiss="alert" data-bs-target="#flag_alert" aria-label="Close"></button>
    </div>
    <h4 class="text-reset mb-5">Welcome <span id="username" class="badge bg-success"><?php echo $_SESSION['customer']; ?></span></h4>
    <h1 class="text-center">Your Orders</h1>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">#Id</th>
                <th scope="col">Date</th>
                <th scope="col">Status</th>
                <th scope="col">Total Cost</th>
                <th scope="col"></th>
            </tr>

        </thead>
        <tbody>
            <?php foreach ($order_row as $order) : ?>
                <tr>
                    <th scope="row"><?php echo $order['id']; ?></th>
                    <td><?php echo $order['created_at']; ?></td>
                    <td><?php echo $order['order_status']; ?></td>
                    <td>£<?php echo $order['total_price']; ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
<?php else : ?>
    <div class="alert alert-danger my-5" role="alert">You are not logged in. Visit the <a href="login.php">login</a> page to sign in.</div>
<?php endif; ?>

<script>
    const username = document.getElementById('username');
    const flagAlert = document.getElementById('flagAlert');
    const lastCookie = document.cookie;
    if (username.innerHTML == "<?php echo $flag['flag_answer']; ?>") {
        flagAlert.innerHTML = '<?php echo $flag['flag_name']; ?>'
    } else {
        document.getElementById('flag_alert').classList.add("d-none");
    }
</script>

<?php include("inc/footer.php"); ?>