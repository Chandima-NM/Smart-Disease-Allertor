import ballerina.lang.system;

	

function divideBy10 (int d) (int, int) {
    return d / 10, d % 10;
}

	

function main (string[] args) {
    int q;
    int r;

    q, r = divideBy10(24);
    system:println("24/10: " + "quotient=" + q + " " +
                   "remainder=" + r);
}
