<?php
$date=date("d-m-y");
$sandage=$_POST["sandage"];
mysql_connect("localhost","root","") or die ('probleme de connxion au server ou à la base de données');
mysql_select_db('bac2019');
$res=mysql_query("SELECT*FROM sondage WHERE datedebut='$date'");
if (mysql_num_rows($res)==0){
    echo  "Sondage non encore lancé !";
    else{
        echo ("Aucune participation enregistrée à ce moment")
    }
    else{
        $req="SELECT email,password,genre,oui,non,sans ";
        $res1=mysql_query($req);
        echo "<p>nombre total des participants au sondage :["total"]</p>"
        echo "<p>nombre des femmes ; ["totalf"]</p>"
        echo "<p>nombre des hommes ; ["totalh"]</p>"


    }
}  


?>