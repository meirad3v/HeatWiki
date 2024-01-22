<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="src/CSS/Main.css">
    <style>
    .centro {
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
    }

    #size {
        width: 100px;
        height: 100px;
    }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>

<body>
    <?php include('header.php');?>
    <?php
if(isset($_GET['nome'])){
    include("Data.php");
    include("bank.php");
   // $sql = "SELECT * FROM player";
    $n = strtolower($_GET['nome']);
    $no = "SELECT * FROM player WHERE nome LIKE '%".$n."%'";
    $res = $bank->query($no);
    //$jog = new Player($n);
    $c = 0;//contador para exibir mensagem de q não achou jogador
    while($jog = $res->fetch_assoc()){//Foreach pra fazer busca parcial
       // if(stripos($player, $n) !== false){
            ?>
    <div class="divmae d-flex justify-content-evenly">
        <div class="shadow-lg rounded-4 ppic">
            <img src="<?php echo $jog['pic'];?>">
            <div id="divinfo">
                <h2 class="pinfo"><?php echo $jog['nome'];?></h2>
                <h2 class="pinfo"><?php echo $jog['pos'];?></h2>
                <h2 class="pinfo"><?php echo $jog['hit'];?></h2>
                <h2 class="pinfo"><?php echo $jog['wit'];?></h2>
                <h2 class="pinfo"><?php echo $jog['id'];?></h2>
                <h2 class="pinfo"><?php echo date("d/m/Y", strtotime($jog['date']));?></h2>
            </div>
        </div>
        <div id="vd">
            <iframe height=500 width=500 src="<?php echo $jog['link']?>" title="YouTube video player"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                allowfullscreen></iframe>
        </div>

    </div>
    <?php
            $c++;
        //}
    }
    if($c==0){
        ?>
    <h1 style="text-align:center;font-family:Athletic; color:whitesmoke;">Jogador inexistente.</h1>
    <?php
    }
}
?>
    <a class="centro" href="Home.php"><img id="size" src="src/Pics/Logow.png"></a>
    <?php  include("footer.php");?>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
    </script>
</body>
</body>

</html>