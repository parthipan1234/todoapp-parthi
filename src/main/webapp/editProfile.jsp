<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>profile</title>
<style type="text/css">
*{
margin: 0px;
padding: 0px;
}
.contain{
border: 1px solid black;
height: 100vh;
background-color: #cccccc;

}
form{
margin: 280px 570px;
font-size: 20px;
}
button{
padding: 7px;
border-radius: 30px;
background-color: green;
width: 100px;
font-size: 18px;
color: white; 
}
</style>
</head>
<body>
<div class="contain">
   <form action="profilepage" method="post" enctype="multipart/form-data">
    
    <label  for="image">Image</label>
    <input type="file"  id="image" name="image">
      <br>
      <br>
      
     <button>submit</button>
  
  </form>
  </div>
</body>
</html>