<?php

include('./php/db_con.php');
$db =  new Database();

if (isset($_GET['id'])) {
    // echo "bericht is verstuurd";
    if ($_GET['id'] === 'true') {
        echo "<script>alert('Bericht is verstuurd')</script>";
    } else {
        echo "<script>alert('Er is iets fout gegaan')</script>";
    }
}

?>

<?php

include './core/header.php';

?>


<body>
    <main>
        <header>

            <?php
            include('./core/nav.php')
            ?>

            <div class="contact-title">
                <h2>Contact me</h2>
                <h5>for questions</h5>
            </div>


            <div class="contact">
                <form id="contact-form" method="post" action="../code/php/message.php">
                    <input name="name" type="text" class="form-control" placeholder="Your Name" required>
                    <br>
                    <input name="email" type="text" class="form-control" placeholder="Your E-mail" required>
                    <br>
                    <textarea name="message" class="form-control" placeholder="Message" rows="4" required></textarea>
                    <br>
                    <button name="" type="submit" class="form-control submit" value="SEND MESSAGE">SEND MESSAGE</button>
                </form>
            </div>
        </header>
    </main>
    <!-- <figure class="bol-1">
    </figure>
    <figure class="bol-2">
    </figure> -->

    <?php 
    
    include 'core/footer.php';

    ?>