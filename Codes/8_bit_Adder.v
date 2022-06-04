`include "1_bit_Adder.v"

module eightBit_rippleCarryAdder(a,b,cin,sum,cout);
    genvar i;

    input [7:0]a,b; 
    input cin; 
    output [7:0]sum; 
    wire [7:0]ct; 
    output cout; 

  generate
    for(i=0;i<8;i=i+1)
    begin : gen_loop
      if(i==0)
        oneBit_fullAdder s(a[i], b[i],cin,sum[i],ct[i]); 
      else if (i==7)
        oneBit_fullAdder t(a[i], b[i],ct[i-1],sum[i],cout); 
      else 
        oneBit_fullAdder g(a[i], b[i],ct[i-1],sum[i],ct[i]); 
    end
  endgenerate
endmodule