console.log('test');

var $workImageContainer = document.getElementById("workImageContainer");
var $workImage = document.getElementById('workImage');

var $zoomInContainer = document.getElementById("zoomInContainer")
var $zoomInContainer2 = document.getElementById("zoomInContainer2")
var $zoomInContainer3 = document.getElementById("zoomInContainer3")

var $showWorkContainer = document.getElementById("showWorkContainer");
var $body = document.getElementById("body");

function zoomIn() {
    // alert('fasfqs');
    $zoomInContainer.style = "display:flex";
    $zoomInContainer2.style = "display:none";
    $zoomInContainer3.style = "display:none";
}

function zoomIn2() {
    // alert('fasfqs');
    $zoomInContainer2.style = "display:flex";
    $zoomInContainer.style = "display:none";
    $zoomInContainer3.style = "display:none";
}
function zoomIn3() {
    // alert('fasfqs');
    $zoomInContainer3.style = "display:flex";
    $zoomInContainer.style = "display:none";
    $zoomInContainer2.style = "display:none";
}


function closeZoomInBtn() {
    $zoomInContainer.style = "display:none";
    // alert("dd")
}
function closeZoomInBtn2() {
    $zoomInContainer2.style = "display:none";
    // alert("dd")
}
function closeZoomInBtn3() {
    $zoomInContainer3.style = "display:none";
    // alert("dd")
}