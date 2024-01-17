<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <style>
    .centro {
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
    }

    #size {
        width: 200px;
        height: 200px;
    }

    .div {
        justify-content: center;
        align-items: center;
    }
    </style>
    <link rel="stylesheet" type="text/css" href="src/CSS/Main.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
     integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
</head>

<body>
    <?php 
    include ('header.php');
    include ('bank.php');
    ?>
    <form class="centro" name="form" action="process.php" method="GET">
        <input type="text" name="nome" placeholder="Playername">
        <input type="submit" name="enviar" value="Busca">
    </form>
    <div class="row row-cols-3">
    <?php
            $query = "SELECT * from player";
            $data = $bank->query($query);
            while($player = $data->fetch_assoc()){
    ?>

        <div class="shadow-lg rounded-4 bank">
            <img src="<?php echo $player['pic'];?>">
            <h1 class="pinfo"><?php echo $player['nome']?></h1>
            <h3 class="pinfo"><?php echo date("d/m/Y", strtotime($jog['date']));?></h3>
            <h3 class="pinfo">#<?php echo $player['id'];?></h3>
        </div>
        <?php
    }?>
    </div>
    <?php include('footer.php');?>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
     integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
    </script>
</body>

</html>