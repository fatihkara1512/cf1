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
<cfquery name="ilham" datasource="WorkCubeDSN">
    SELECT *
    FROM ilham
</cfquery>
       <div class="row">
         <cfloop query="ilham">
           <cfoutput>
                <div class="col-12 col-md-6 col-lg-3">
                <a  href="ayrinti.cfm?kategori=ilham&id=#ilham.id#" title="View Product">
                   <div class="card">
                      <img class="card-img-top" src="#ilham.url#" alt="Card image cap">
                       <div class="card-body">
                           <h5 class="card-title" style='color:black;'>#ilham.isim#</h5>
                      </div>
                   </div></a>
                </div></cfoutput>
              </cfloop>
           </div>
<cfinclude template="kalip/layout2.cfm">
  </body>
</html>