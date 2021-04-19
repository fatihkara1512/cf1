<!doctype html>
<html>
  <head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <cfprocessingdirective pageencoding="utf-8">
  	<title>Ben Ve Projem</title>
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
		<link rel="stylesheet" href="css/style.css">
  </head>
  <body>
<cfinclude template="kalip/layout1.cfm">
<cfquery name="album" datasource="WorkCubeDSN">
    SELECT *
    FROM album
</cfquery>
       <div class="row">
         <cfloop query="album">
           <cfoutput>
                <div class="col-12 col-md-6 col-lg-2">
                   <div class="card" id="#album.kategori#" style='cursor: pointer;'>
                      <img class="card-img-top" src="images/album.jpg" alt="Card image cap">
                       <div class="card-body">
                           <h5 class="card-title" style='font-size: 12px;,color:black;'>#album.isim#</h5>
                      </div>
                   </div><br>
                </div></cfoutput>
              </cfloop>
           </div> <hr />
 <div class="row row2"></div>

<cfinclude template="kalip/layout2.cfm">
<script>

$(function(){
  var a=1;
  $.ajax({
url:"data.cfm",
dataType: "json",
data :{ kategori: "film"},
success : function(response){
 $.each(response, function(i, field){
    if(a%4==0){     $(".row2").html($(".row2").html()+"<div class='col-12 col-md-6 col-lg-2'>"+
               " <a href='ayrinti.cfm?kategori="+kat+"&id="+id+"' title='View Product'>"+
                  " <div class='card'>"+
                      "<img class='card-img-top' src='"+res+"' alt='Card image cap'>"+
                       "<div class='card-body'>"+
                          " <h5 class='card-title'  style='font-size: 12px;,color:black;'>"+field+"</h5>"+
                      "</div>"+
                  " </div></a><br>"+
                "</div>");}
 else if((a+3)%4==0){kat=field;}
 else if((a+2)%4==0){res=field;}
 else{id=field;}
a=a+1;
    });
  }
});
  $(".card").click(function(){ 
    $(".row2").html(" ");
     var a=1;
     var kat="";
     var res="";
     var id="";
$.ajax({
url:"data.cfm", 
dataType: "json",
data :{ kategori: $(this).attr("id")},
success : function(response){
  $.each(response, function(i, field){
    if(a%4==0){     $(".row2").html($(".row2").html()+"<div class='col-12 col-md-6 col-lg-2'>"+
               " <a href='ayrinti.cfm?kategori="+kat+"&id="+id+"' title='View Product'>"+
                  " <div class='card'>"+
                      "<img class='card-img-top' src='"+res+"' alt='Card image cap'>"+
                       "<div class='card-body'>"+
                          " <h5 class='card-title'  style='font-size: 12px;,color:black;'>"+field+"</h5>"+
                      "</div>"+
                  " </div></a><br>"+
                "</div>");}
 else if((a+3)%4==0){kat=field;}
 else if((a+2)%4==0){res=field;}
 else{id=field;}
a=a+1;
    });
  }
});
});
});
</script>
  </body>
</html>