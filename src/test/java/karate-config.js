 function fn() { 
  
  var config = {
   BASEURL : 'https://reqres.in/api'
	   
  } 



  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);

  return config;
 }
