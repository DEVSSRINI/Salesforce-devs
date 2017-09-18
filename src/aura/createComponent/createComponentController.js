/*createComponentController.js*/
({
    doInit : function(cmp) {
        $A.createComponents(
            [
                [
                    "ui:button",
                        {
                            "aura:id": "findableAuraId",
                            "label": "Press Me",
                            "press": cmp.getReference("c.handlePress")
                        }
                ],
                [
                    "ui:message",
                    {
                        "title" : "Sample Thrown Error",
                        "severity" : "error"
                    }
                ],
                [
                    "ui:outputText",
                    {
                        "value" : "e.message"
                    }
                ]
            ],
            function(components, status, errorMessage){
                //Add the new button to the body array
                if (status === "SUCCESS") {
                    
					var newButton = components[0];
                    var message = components[1];
            		var outputText = components[2];
					
                    var body = cmp.get("v.body");
                    	body.push(newButton);
                    	body.push(message);
                    	body.push(outputText);
                    cmp.set("v.body", body);
                }
                else if (status === "INCOMPLETE") {
                    console.log("No response from server or client is offline.")
                    // Show offline error
                }
                else if (status === "ERROR") {
                    console.log("Error: " + errorMessage);
                    // Show error message
                }
            }
        );
    },

    handlePress : function(cmp) {
        console.log("button pressed");
    }
})