`timescale 1ns / 1ps

module testbench;

reg [7:0] a,b;
reg[3:0] select;

wire[7:0] out;
wire carry;
wire flag;
integer i;

alu al(.a(a),.b(b),.select(select),.out(out),.carry(carry) ,.flag(flag));


initial
begin
a = 8'd10; 
b = 8'd5;
select = 4'b0000;


for(i =0 ; i < 9; i = i+1)
begin
select = i;
#10;
end
#20 $finish;

end


initial begin
$dumpfile("alu.vcd");
$dumpvars(0, testbench);

 $monitor($time," | select = %b | a = %d | b = %d | out = %d | carry = %b | flag = %b ", select, a, b, out, carry, flag);

end


endmodule

