<div class="container_list" >
<form id="uploadForm" action="parents" method="post">
    <div>
        <label>Upload Image File:</label>
        <input name="userImage" id="userImage" type="file" class="demoInputBox" />
    </div>
    <div id="progress-div"><div id="progress-bar"></div></div>
    <div id="targetLayer"></div>
</form>
<div id="loader-icon" style="display:none;"><img src="<?php image_url('index.pulsing-squares-loader.gif'); ?>" /></div>
</div>