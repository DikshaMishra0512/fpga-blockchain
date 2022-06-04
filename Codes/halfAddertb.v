
`include "halfAdder.v"
module TestModule;
reg a;
reg b;
wire sum;
wire carry;
HalfAdder uut (
.a(a),
.b(b),
.sum(sum),
.carry(carry)
);
initial begin
a = 0;
b = 0;
#100
a = 1;
b = 0;
end
Endmodule
