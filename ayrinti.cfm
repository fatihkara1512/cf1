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
<cfset id = url.id />
<cfset kategori = url.kategori />
<cfquery name="x" datasource="WorkCubeDSN">
    SELECT *
    FROM #kategori# where uye_id=1 and id=#id#
</cfquery>
       <div class="row">
           <cfoutput query="x">
                <div class="col-12 col-md-6 col-lg-4">
                   <div class="card">
                      <img class="card-img-top"src="#x.url#" alt="Card image cap">
                   </div><br>
                </div>
                 <div class="col-12 col-md-6 col-lg-8">
                <h5 class="card-title" style='color:black;'>#x.isim#</h5>
                      #x.aciklama#
                    <cfif kategori EQ 'oyuncu'>
                                    <cfquery name="xy" datasource="WorkCubeDSN">
                                    SELECT oyuncu_film.film_isim
                                        FROM oyuncu
                                        INNER JOIN oyuncu_film ON oyuncu.id = oyuncu_film.oyuncu_id where oyuncu.id=#x.id#;
                                    </cfquery><br/><br/>
                                    <h5 class="card-title" style='color:black;'>Oynadığı Filmler</h5>
                                        <ul>
                                    <cfloop query="xy">
                                        <li>#xy.film_isim#</li>
                                    </cfloop>
                                        </ul>
                    </cfif>
                   <br>
                </div>
                </cfoutput>
           </div>
<cfinclude template="kalip/layout2.cfm">

  </body>
</html>