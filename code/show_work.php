<?php
include 'core/header.php';
include 'opdrachten/getWork.php';
include 'php/db_con.php';
$getWork = new getWork();
$getWorkFunction = $getWork->showWork();
?>
<body id="body">
    <main>
        <div class="header-work">
            <?php
            include('core/nav.php')
            ?>
            <div id="showWorkContainer" class="showWorkContainer">
                <?php
                foreach ($getWorkFunction as $key => $data) {
                    echo "<h1>$data->titel</h1>";
                    if (isset($data->url)) {
                        echo "<a href='$data->url'>$data->url</a>";
                    }
                }
                ?>
                <br>
                <?php
                if (isset($getWorkFunction->login_systeem->content)) {
                    foreach ($getWorkFunction->login_systeem->content  as $key => $content) {
                        foreach ($content->data as $key => $data) {
                            echo "<p>{$data->intro}</p>";
                            echo '<br>';
                            echo "<img onclick='zoomIn()' id='workImage' class='showWorkFoto' src='opdrachten/img/{$data->foto}' >";
                            echo '<br>';
                            echo "
                            <div class='zoomInContainerClass' id='zoomInContainer'>
                            <img class='zoomInImage' src='opdrachten/img/{$data->foto}' />
                            <button onclick='closeZoomInBtn()' class='closeZoomIn'></button>
                            </div>
                            ";
                        }
                    }
                }
                if (isset($getWorkFunction->login_systeem->content2)) {
                    foreach ($getWorkFunction->login_systeem->content2  as $key => $content2) {
                        foreach ($content2->data as $key => $data) {
                            echo "<p>{$data->tekst}</p>";
                            echo '<br>';
                            echo "<img onclick='zoomIn2()' id='workImage2' class='showWorkFoto' src='opdrachten/img/{$data->foto}' >";
                            echo '<br>';
                            echo "
                            <div class='zoomInContainerClass' id='zoomInContainer2'>
                            <img class='zoomInImage' src='opdrachten/img/{$data->foto}' />
                            <button onclick='closeZoomInBtn2()' class='closeZoomIn'></button>
                            </div>
                            ";
                        }
                    }
                }
                if (isset($getWorkFunction->login_systeem->content3)) {
                    foreach ($getWorkFunction->login_systeem->content3  as $key => $content3) {
                        foreach ($content3->data as $key => $data) {
                            echo "<p>{$data->tekst}</p>";
                            echo '<br>';
                            echo "<img onclick='zoomIn3()' id='workImage3' class='showWorkFoto' src='opdrachten/img/{$data->foto}' >";
                            echo '<br>';
                            echo "
                            <div class='zoomInContainerClass' id='zoomInContainer3'>
                            <img class='zoomInImage' src='opdrachten/img/{$data->foto}' />
                            <button onclick='closeZoomInBtn3()' class='closeZoomIn'></button>
                            </div>
                            ";
                        }
                    }
                }
                ?>
            </div>
        </div>
    </main>
    <!-- <figure class="bol-1">
    </figure>
    <figure class="bol-2">
    </figure> -->
    <?php

    include 'core/footer.php';

    ?>
