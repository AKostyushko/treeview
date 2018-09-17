<html>
<head>
    <meta charset='UTF-8' lang="ru"/>
    <title>Artur</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
    <script type="text/javascript" charset="UTF-8"
            src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-treeview/1.2.0/bootstrap-treeview.min.js"></script>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-treeview/1.2.0/bootstrap-treeview.min.css">

    <style>
    </style>
    <script>

        function objToArray(data){
            let  res = [];
            Object.keys(data).map(function(key) {
                res.push(data[key]);
            });
            return res;
        }

        function fetch(data) {
            let arr = objToArray(data);
            $("#treeview").treeview({data: arr});
        }

        $(document).ready(function () {
            $.ajax({
                url: "fetch.php",
                method: "POST",
                dataType:"json",
                success: fetch
            });
        });

    </script>
</head>
<body>
<br/><br/>
<div class="container" style="width: 900px">
    <h2 align="center">Hello world</h2>
    <br/><br/>
    <div id="treeview" style="height: 500px"></div>
</div>
</body>


</html>




    

