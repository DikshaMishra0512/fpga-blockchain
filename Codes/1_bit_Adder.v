module oneBit_fullAdder(input a, input b, input cin, output sum, output cout);
    assign sum= a^b^cin; //adding input bits and carry input
    assign cout = a&b | (cin & (a|b)); //for carry out when any two of a,b,cin are one
endmodule