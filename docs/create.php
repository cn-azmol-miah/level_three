<?php
require('../config/db.php');
require('../config/config.php');
session_start();

?>

<!-- Header and Search Includes -->
<?php include("../inc/admin-header.php"); ?>
<h1>Add Task</h1>
<form method="post">
    <div class="form-group mb-3">
        <label for="InputTitle" class="form-label">Title</label>
        <input type="text" name="title" class="form-control" id="InputTitle" aria-describedby="titleHelp">
    </div>
    <div class="form-group mb-3">
        <form method="post">
            <textarea id="summernote" name="editordata"></textarea>
            <script>
                $(document).ready(function() {

                    $('#summernote').summernote({
                        tabsize: 2,
                        height: 400,
                        spellCheck: true,
                        toolbar: [
                            ['style', ['style']],
                            ['font', ['bold', 'underline', 'italic', 'superscript', 'subscript', 'clear']],
                            ['fontname', ['fontname', 'fontsize']],
                            ['color', ['color']],
                            ['para', ['ul', 'ol', 'paragraph']],
                            ['table', ['table']],
                            ['insert', ['link', 'picture', 'video']],
                            ['view', ['fullscreen', 'help', 'undo', 'redo']],
                        ],
                        callbacks: {
                            onImageUpload: function(files, editor, welEditable) {
                                sendFile(files[0], editor, welEditable);
                            }
                        }
                    });

                    function sendFile(file, editor, welEditable) {
                        var lib_url = '<?php echo ROOT_URL . "docs/upload.php"; ?>';
                        data = new FormData();
                        data.append("file", file);
                        $.ajax({
                            data: data,
                            type: "POST",
                            url: lib_url,
                            cache: false,
                            processData: false,
                            contentType: false,
                            success: function(url) {
                                var image = $('<img>').attr('src', url);
                                $('#summernote').summernote("insertNode", image[0]);
                            }
                        });
                    }

                });
            </script>
        </form>
    </div>
    <div class="form-group mb-3">
        <label for="InputAnswer" class="form-label">Answer</label>
        <input type="text" name="answer" class="form-control" id="InputAnswer" aria-describedby="titleHelp">
    </div>
    <button type="submit" name="submit" class="btn btn-outline-success mt-4"><i class="far fa-paper-plane"></i> Submit</button>
</form>

<!-- Footer -->
<?php include("../inc/footer.php"); ?>