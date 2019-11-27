<plugin>
    <name>Schema Builder</name>
    <package>SchemaBuilder</package>
    <loadPriority>5</loadPriority>
    <version>1.0.0</version>
    <provider>Red Ant Solutions</provider>
    <providerURL>https://www.redantsolutions.com</providerURL>
    <directoryFormat>packageOnly</directoryFormat>
    <category>Utility</category>
    <extensions>
        <extension type="Page" subtype="default">
            <attributeset name="Google Schema Settings" container="Publishing">
                <attribute name="schemaJson"
                    label="Schema JSON"
                    hint="The JSON packet to use for the schema (use JSON Lint to validate your JSON)"
                    type="TextArea"
                    validation=""/>
                <attribute name="includeChildren"
                    label="Include Schemes from Children?"
                    hint="Select whether to include schema from child pages"
                    type="SelectBox"
                    optionList="no^yes"
                    optionLabelList="No^Yes"
                    required="true"/>
            </attributeset>
        </extension>
        <extension type="Folder" subtype="default">
            <attributeset name="Google Schema Settings" container="Publishing">
                <attribute name="schemaJson"
                    label="Schema JSON"
                    hint="The JSON packet to use for the schema (use JSON Lint to validate your JSON)"
                    type="TextArea"
                    validation=""/>
                <attribute name="includeChildren"
                    label="Include Schemes from Children?"
                    hint="Select whether to include schema from child pages"
                    type="SelectBox"
                    optionList="no^yes"
                    optionLabelList="No^Yes"
                    required="true"/>
            </attributeset>
        </extension>
        <extension type="Calendar" subtype="default">
            <attributeset name="Google Schema Settings" container="Publishing">
                <attribute name="schemaJson"
                    label="Schema JSON"
                    hint="The JSON packet to use for the schema (use JSON Lint to validate your JSON)"
                    type="TextArea"
                    validation=""/>
                <attribute name="includeChildren"
                    label="Include Schemes from Children?"
                    hint="Select whether to include schema from child pages"
                    type="SelectBox"
                    optionList="no^yes"
                    optionLabelList="No^Yes"
                    required="true"/>
            </attributeset>
        </extension>
        <extension type="Gallery" subtype="default">
            <attributeset name="Google Schema Settings" container="Publishing">
                <attribute name="schemaJson"
                    label="Schema JSON"
                    hint="The JSON packet to use for the schema (use JSON Lint to validate your JSON)"
                    type="TextArea"
                    validation=""/>
                <attribute name="includeChildren"
                    label="Include Schemes from Children?"
                    hint="Select whether to include schema from child pages"
                    type="SelectBox"
                    optionList="no^yes"
                    optionLabelList="No^Yes"
                    required="true"/>
            </attributeset>
        </extension>
    </extensions>
    <eventHandlers>
        <eventHandler event="onApplicationLoad" component="eventHandler" persist="false"/>>
    </eventHandlers>
    <displayObjects/>
    <settings/>
    <mappings/>
    <ormCFCLocation/>
    <customTagPaths/>
</plugin>