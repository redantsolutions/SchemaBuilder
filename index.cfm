<cfscript>
    // Get current site Iid
    mySiteId = structKeyExists(session, 'siteid') ? session.siteid : 'default';
    // Get Mura scope
    $ = structKeyExists(request, 'muraScope') ? request.muraScope : application.serviceFactory.getBean('muraScope').init(mySiteId);
    // Get the plugin configuration
    pluginConfig = $.getBean('pluginManager').getConfig('SchemaBuilder');
</cfscript>

<cfoutput>
    <cfsavecontent variable="adminBody">
        <h2>#pluginConfig.getName()#</h2>
        <p>Welcome to the admin area for the #pluginConfig.getName()# plugin.</p>
        <h3>How to use this plugin</h3>
        <ol>
           <li>Open a content item in the Content area</li>
           <li>View the "Publishing" tab</li>
           <li>Scroll down to the "Google Schema Settings" section</li>
           <li>Navigate to <a href="https://jsonlint.com/" target="_blank">Json Lint</a></li>
           <li>Type or paste the JSON packet into the text area, then click the "Validate JSON" button</li>
           <li>If the JSON packet is valid, paste it into the "Schema JSON" text area in the CMS</li>
           <li>If you want to include schema from child pages, change "Include Schemes from Children?" from "No" to "Yes"</li>
           <li>Publish the page and you're done!</li>
        </ol>
    </cfsavecontent>

    #$.getBean('pluginManager').renderAdminTemplate(body=adminBody,pageTitle=pluginConfig.getName())#
</cfoutput>