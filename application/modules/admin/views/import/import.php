<div class="container_list" >
<form id="uploadForm" action="" method="post">
    <div>
        <label>Upload Image File:</label>
        <input name="userImage" id="userImage" type="file" class="demoInputBox" />
    </div>
    <div><input type="submit" id="btnSubmit" value="Submit" class="btnSubmit" /></div>
    <div id="progress-div"><div id="progress-bar"></div></div>
    <div id="targetLayer"></div>
</form>
<div id="loader-icon" style="display:none;"><img src="LoaderIcon.gif" /></div>
</div>

<script>
    $(document).ready(function() {
        $('#uploadForm').submit(function(e) {
            if($('#userImage').val()) {
                e.preventDefault();
                $('#loader-icon').show();
                $(this).ajaxSubmit({
                    target:   '#targetLayer',
                    beforeSubmit: function() {
                        $("#progress-bar").width('0%');
                    },
                    uploadProgress: function (event, position, total, percentComplete){
                        $("#progress-bar").width(percentComplete + '%');
                        $("#progress-bar").html('<div id="progress-status">' + percentComplete +' %</div>')
                    },
                    success:function (){
                        $('#loader-icon').hide();
                    },
                    resetForm: true
                });
                return false;
            }
        });
    });
</script>
