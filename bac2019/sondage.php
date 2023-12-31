<?php
$email=$_POST["email"];
$password=$_POST["password"];
mysql_connect("localhost","root","") or die ('probleme de connxion au server ou à la base de données');
mysql_select_db('bac2019');
$res=mysql_query("SELECT*FROM sondage WHERE email='$email'and (password='$password');");
if (mysql_num_rows($res)==0){
    echo "Erreur d'authenfication";
}  
else{
    $req="UPDATE sondage SET email='$email' WHERE (password='$password')";
    $res1=mysql_query($req);
    if(mysql_affected_rows($req)==1){
        echo "Mise à jour effectuee avec succes";
        else{
            $req1="UPDATE sondage SET email='$email' WHERE (password='$password')";
            $res2=mysql_query($req1);
            if(mysql_affected_rows()==1){
                echo "Participation au sondage effectuee avec succes";
                else{
                    $req1="INSERT INTO sondage VALUES ('$email','$password')";
                    $res3=mysql_query($req1);
                    if(mysql_affected_rows()==1){
                        echo "Inscription et participation au sondage effectuées avec succès";
                    } 
                }
        }
    }
}
}

?>
