module oneBit_comparator(input a,input b, output g, output e, output l);
    //to make comparison between two 1-bit input
    
    assign g=a & ~b; //if a is 1 and b is 0 then a is greater than b
    assign e=~(a ^ b); //if a and b are equal (xor gate) 
    assign l=b & ~a; ////if a is 0 and b is 1 then a is lesser than b

endmodule