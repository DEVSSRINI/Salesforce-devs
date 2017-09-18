<aura:application >
    <c:eMail val1="50" val2="40" whom="Srini.Dev" />
    
    See how we set the header facet.<br/>

    <c:facetHeader >

        Nice Work!

        <aura:set attribute="header">
            Hello Header - By Srini!
        </aura:set>
        
        <aura:set attribute="bodyx">
            <aura:if isTrue="false">
                Hello Header - By Srini! - Updated ***
                <aura:set attribute="else">
                    Hello - This is else part !!! ***
                </aura:set>
            </aura:if>
        </aura:set>
        
    </c:facetHeader>
    
    <c:PageInit />
    
    <br></br>
    <c:createComponent ></c:createComponent>
	<br></br>
    <c:toggleCss ></c:toggleCss>
    <br></br>
    <c:changeCss ></c:changeCss>
	<br></br>
    <c:buttonPressed ></c:buttonPressed>
    <br></br>
    <c:serverSideCntrl ></c:serverSideCntrl>
    <br></br>
    <c:GetOpp ></c:GetOpp>
    <br></br>
    <c:subComp ></c:subComp>
</aura:application>