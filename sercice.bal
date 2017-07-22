import ballerina.lang.messages;
import ballerina.net.http;



service<http> health {

    resource healthSmart (message m) {

	

        message response = {};


	

        messages:setStringPayload(response,);

       Json J =  messages:getJsonPayload(m)



        reply response;
    }
}
