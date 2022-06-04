`include "1_bit_comparator.v"

module eightBit_comparator(a,b,g,e,l);
    input [7:0]a,b;
    wire [7:0]x,y,z;
    output g,e,l;
    reg p,q,r;

    genvar i;
    integer j,k;

    generate
        for(i=7;i>-1;i=i-1) 
        begin
            oneBit_comparator t(a[i],b[i],x[i],y[i],z[i]);
        end                                                                                                                                                                                                                                                                                                                                                                                                                       
    endgenerate

    always @(*)
    begin
        k=0; //flag if registers p,q,r are assigned values
        for(j=7;j>-1;j=j-1)  //loop from leftmost bit to check comparison
        begin
            if (y[j]==0 && k==0) begin
                //when a[i] is either greater or lesser than b[i] then that's same for a and b
              k=1;
              p=x[j];
              q=y[j];
              r=z[j];
            end
            else if( j==0 && k==0)begin
                //when all bits till now are equal in both a and b then the rightmost bit signify comparison the same for a and b
              p=x[j];
              q=y[j];
              r=z[j];
            end
        end
    end
    //assigning values into output from the register
    assign g=p;
    assign e=q;
    assign l=r;

endmodule