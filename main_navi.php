<?php

  $katq = safe_query("SELECT * FROM produktkat WHERE top_ID IS NULL");
  echo'<ul>';
  while($kat = mysql_fetch_array($katq)){
     echo '<li><p>';
     if(isset($_GET['catID'])){
        if($_GET['catID'] == $kat['ID']){
          echo '--> ';                     // irgendeine Art von highlighting
        }
     }
     echo '<a class="navilink" href="index.php?site=category&catID='.$kat['ID'].'">'.$kat['name'].'</a></p></li>';
  }
   echo'</ul>';
?>