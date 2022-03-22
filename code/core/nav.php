<?php
define("BASEURL", "http://localhost/programming/portfolio/code/");
?>
<script src="<?php echo BASEURL; ?>js/script.js"></script>
<nav>
    <div class="dropdown">
        <button class="dropbtn"></button>
        <div class="dropdown-content">
            <a href="index.php">Home</a>
            <a href="about.php">About</a>
            <a href="work.php">Work</a>
            <a href="contact.php">Contact</a>
        </div>
    </div>
    <a class="portfolio">Gavin Tjin</a>
    <ul>
        <li class="home-bg"><a class="home" href="<?php echo BASEURL; ?>">Home</a></li>
        <li><a href="<?php echo BASEURL; ?>about.php">About</a></li>
        <li><a href="<?php echo BASEURL; ?>work.php">Work</a></li>
        <li><a href="<?php echo BASEURL; ?>contact.php">Contact</a></li>
    </ul>
</nav>