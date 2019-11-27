<cfcomponent extends="mura.plugin.pluginGenericEventHandler" output="false">
    <cfscript>
        function onApplicationLoad($) {
            variables.pluginConfig.addEventHandler(this);
        }

        // Hook into the onRenderEnd event
        public function onRenderEnd($) {
            // Use schemaJson to hold the the schema JSON packet(s), defaults to empty string
            var schemaJson = "";
            // Use includeChildren to store whether the page is puuling in schema from child nodes, defaults to "no"
            var includeChildren = "no";

            // If the schemaJson property of the page has content, then include it in the local schemaJson variable
            if ($.content('schemaJson') != '') {
                schemaJson = '<script type="application/ld+json">#$.content('schemaJson')#</script>';
            }

            includeChildren = $.content('includeChildren');

            // If the page is pulling in schema from children, loop over the children and add any schema that exist
            if (includeChildren == 'yes') {
                var it = $.content().getKidsIterator().setNextN(0);
                if (it.hasNext()) {
                    while (it.hasNext()) {
                        var child = it.next();
                        if (child.get('schemaJson') != '') {
                            schemaJson = schemaJson & '<script type="application/ld+json">#child.get('schemaJson')#</script>';
                        }
                    }
                }
            }

            // Add the schema to the head
            $.event('__muraresponse__',replace($.event('__muraresponse__'),'</head>','#schemaJson#</head>'));
        }
    </cfscript>
</cfcomponent>