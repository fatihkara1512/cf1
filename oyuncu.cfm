<!doctype html>
<html>
  <head>
    <cfprocessingdirective pageencoding="utf-8">
  	<title>Ben Ve Projem</title>
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
		<link rel="stylesheet" href="css/style.css">
  </head>
  <body>
<cfinclude template="kalip/layout1.cfm">
<cfquery name="oyuncu" datasource="WorkCubeDSN">
    SELECT *
    FROM oyuncu where uye_id=1
</cfquery>
       <div class="row">
         <cfloop query="oyuncu">
           <cfoutput>
                <div class="col-12 col-md-6 col-lg-3">
                <a  href="ayrinti.cfm?kategori=oyuncu&id=#oyuncu.id#" title="View Product">
                   <div class="card">
                      <img class="card-img-top"  src="#oyuncu.url#" alt="Card image cap">
                       <div class="card-body">
                           <h5 class="card-title" style='color:black;'>#oyuncu.isim#</h5>
                      </div>
                   </div></a><br>
                </div></cfoutput>
              </cfloop>
           </div>
<cfinclude template="kalip/layout2.cfm">
  </body>
</html>