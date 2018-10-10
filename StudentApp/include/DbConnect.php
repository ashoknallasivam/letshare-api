<?php

//Class DbConnect
class DbConnect
{
    //Variable to store database link
    private $con;

    //Class constructor
    function __construct()
    {

    }

    //This method will connect to the database
    function connect()
    {
        //Including the constants.php file to get the database constants
        include_once dirname(__FILE__) . '/Constants.php';
       try{
		   //connecting to mysql database
		   // $this->con = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
		   $options  = array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
		   PDO::ATTR_DEFAULT_FETCH_MODE                      => PDO::FETCH_ASSOC,
		   );
		   $this->con = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME,
		   DB_USERNAME, DB_PASSWORD,$options);
		   return $this->con;
       }
	   catch(\Exception $ex){
		   return $ex->getMessage();
	   }	   
		
		
       
        
    }

}