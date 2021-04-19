   <cfset kategori = url.kategori />
 <cfquery name="x"  datasource="WorkCubeDSN">
     SELECT *
    FROM  #kategori#
    </cfquery>
    <cfset i=1>
     <cfset myStruct={}/> 
    <cfloop query="x" >
  <cfset myStruct[#i#]=#kategori# />
<cfset myStruct[#i#+1]=#x.url# />
 <cfset myStruct[#i#+2]=#x.id# />
 <cfset myStruct[#i#+3]=#x.isim# />
 
<cfset i=i+4>
    </cfloop>

    <cfset   myJsonVar = serializeJSON(myStruct)/>

<cfoutput>#myJsonVar#</cfoutput>
