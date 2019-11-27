<cfsilent>
    <cfset myJson = $.content().getValue('schemaJson')/>
    <cfset includeChildren = $.content().getValue('includeChildren')/>
</cfsilent>

<cfoutput>
    <cfdump var="#myJson#" expand="false"/>
    <cfdump var="#includeChildren#" expand="false"/>
</cfoutput>