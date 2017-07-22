import ballerina.lang.system;


function print (string value) {
    system:println(value);
}

function add (int a, int b) (int) {
    return a + b;
}

	

function main (string[] args) {

    print("This is a sample text");

	

    int result = add(5, 6);
    system:print(result);
}
