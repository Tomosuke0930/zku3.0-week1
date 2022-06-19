pragma circom 2.0.0;

include "../node_modules/circomlib/circuits/comparators.circom";

template rangeProof0to9(n) {
    assert(n <= 252);
    // signal input in; // this is the number to be proved inside the range 
    signal input in;
    signal output out;

    component low = LessEqThan(n);
    component high = GreaterEqThan(n);

    // [assignment] insert your code here
    // create a template (not circuit, so don’t add component main = ...) 
    // that uses GreaterEqThan and LessEqThan to perform a range proof.
    low.in[0] <== in;
    low.in[1] <== 0; // 0 <= in
    high.in[0] <== in;
    high.in[1] <== 9;// in <= 9

    out <== low.out * high.out;
}
