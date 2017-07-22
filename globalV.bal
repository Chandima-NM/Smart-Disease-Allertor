import ballerina.lang.system;
	

int total = 98;

	

string content = "";

	

function main (string[] args) {

	

    system:println(total);

	

    content = content + "This is a sample text\n";
    system:println(content);
}
