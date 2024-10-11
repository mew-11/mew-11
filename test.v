`timescale 1ns / 1ps
module MOD60(
    input RST,
    input CLK,
    output reg[7:0] NUM
);
initial begin
    NUM = 8'B0001_0101;
end
always @(posedge CLK)
begin
    if(RST == 1)begin
        NUM = 0;
    end else
        if( NUM[3:0] == 9 ) begin
        NUM[3:0] = 0;
    if( NUM[7:4] == 5 )begin
        NUM[7:4] = 0;
    end else
        NUM[7:4] = NUM[7:4] + 1;
    end else begin
        NUM[3:0] = NUM[3:0] + 1;
    end
end
endmodule