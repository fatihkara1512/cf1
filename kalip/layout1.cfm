		<div class="wrapper d-flex align-items-stretch">
			<nav id="sidebar">
				<div class="p-4 pt-5">
		  		<a href="#" class="img logo rounded-circle mb-5" style="background-image: url(images/logo.jpg);"></a>
	        <ul class="list-unstyled components mb-5">
	          <li <cfif FindNoCase("index.cfm",#cgi.SCRIPT_NAME#)>
              class="active"
              </cfif>>
	            <a href="index.cfm" data-toggle="collapse" aria-expanded="false"> Ben ve Projem</a>
	          </li>
	          <li <cfif FindNoCase("kitap.cfm",#cgi.SCRIPT_NAME#)>
              class="active"
              </cfif>>
	              <a href="kitap.cfm"> Okuduğum Kitaplar</a>
	          </li>
	          <li <cfif FindNoCase("film.cfm",#cgi.SCRIPT_NAME#)>
              class="active"
              </cfif>>
              <a href="film.cfm">Sevdiğim Filmler</a>
        
	          </li>
	          <li <cfif FindNoCase("oyuncu.cfm",#cgi.SCRIPT_NAME#)>
              class="active"
              </cfif>>
              <a href="oyuncu.cfm">Sevdiğim Oyuncular</a>
	          </li>
	          <li <cfif FindNoCase("ilham.cfm",#cgi.SCRIPT_NAME#)>
              class="active"
              </cfif>>
              <a href="ilham.cfm">İlham Aldıklarım</a>
	          </li>
              <li <cfif FindNoCase("album.cfm",#cgi.SCRIPT_NAME#)>
              class="active"
              </cfif>>
                <a href="album.cfm">Albüm</a>
                </li>
	        </ul>

	        <div class="footer">
	        	<p>
						  © 2021
						  </p>
	        </div>

	      </div>
    	</nav>


      <div id="content" class="p-4 p-md-5">

	
			  <cfif FindNoCase("index.cfm",#cgi.SCRIPT_NAME#)>
                 <h2 class="mb-4">Ben Ve Projem</h2>
              </cfif>
			  <cfif FindNoCase("kitap.cfm",#cgi.SCRIPT_NAME#)>
                 <h2 class="mb-4">Okuduğum Kitaplar</h2>
              </cfif>
			  <cfif FindNoCase("film.cfm",#cgi.SCRIPT_NAME#)>
                 <h2 class="mb-4">Sevdiğim Filmler</h2>
              </cfif>
			  <cfif FindNoCase("oyuncu.cfm",#cgi.SCRIPT_NAME#)>
                 <h2 class="mb-4">Sevdiğim Oyuncular</h2>
              </cfif>
			  <cfif FindNoCase("ilham.cfm",#cgi.SCRIPT_NAME#)>
                 <h2 class="mb-4">İlham Aldıklarım</h2>
              </cfif>
			  <cfif FindNoCase("album.cfm",#cgi.SCRIPT_NAME#)>
                 <h2 class="mb-4">Albüm</h2>
              </cfif>
               <cfif FindNoCase("ayrinti.cfm",#cgi.SCRIPT_NAME#)>
                 <h2 class="mb-4">Detaylar</h2>
              </cfif>
     
     <hr />
    
