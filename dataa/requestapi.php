
<?php

    function trivia() 
    
      {
        $url = 'http://marcconrad.com/uob/tomato/api.php?out=json'; //assign api endpoint to variable
        $data = file_get_contents($url); //retrieves the data from api
        return json_decode($data, true); //decodes json data to php associated arrray
      }     
?> 