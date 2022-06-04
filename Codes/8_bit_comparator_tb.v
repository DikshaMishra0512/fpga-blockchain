`include "8_bit_comparator.v"

module B8_comparator();
reg [7:0]a,b;
wire g,e,l;

eightBit_comparator t(a,b,g,e,l);

    initial begin
    // displaying three bits after a and b showing if a is greater, equal or lesser than b respectively
      a= 10; b= 20; #5; $display("a=%d b=%d %b %b %b", a,b,g,e,l);
      a= 35; b= 35; #5; $display("a=%d b=%d %b %b %b", a,b,g,e,l);
      a= 50; b= 45; #5; $display("a=%d b=%d %b %b %b", a,b,g,e,l);
      a= 16; b= 20; #5; $display("a=%d b=%d %b %b %b", a,b,g,e,l);
      a= 55; b= 55; #5; $display("a=%d b=%d %b %b %b", a,b,g,e,l);
      a= 50; b= 15; #5; $display("a=%d b=%d %b %b %b", a,b,g,e,l);
      a= 20; b= 20; #5; $display("a=%d b=%d %b %b %b", a,b,g,e,l);
      a= 90; b= 90; #5; $display("a=%d b=%d %b %b %b", a,b,g,e,l);
      a= 60; b= 45; #5; $display("a=%d b=%d %b %b %b", a,b,g,e,l);
      a= 15; b= 20; #5; $display("a=%d b=%d %b %b %b", a,b,g,e,l);
      a= 59; b= 55; #5; $display("a=%d b=%d %b %b %b", a,b,g,e,l);
      a= 50; b= 95; #5; $display("a=%d b=%d %b %b %b", a,b,g,e,l);
      a= 90; b= 45; #5; $display("a=%d b=%d %b %b %b", a,b,g,e,l);
      a= 9; b= 20; #5; $display("a=%d b=%d %b %b %b", a,b,g,e,l);
      a= 5; b= 55; #5; $display("a=%d b=%d %b %b %b", a,b,g,e,l);
      a= 119; b= 95; #5; $display("a=%d b=%d %b %b %b", a,b,g,e,l);

      // if (g==1)
      //   $display("%d is greater than %d",a,b);
      // else if (l==1)
      //   $display("%d is smaller than %d",a,b);
      // else if(e==1)
      //   $display("%d is equal to %d",a,b);

    end

    

endmodule