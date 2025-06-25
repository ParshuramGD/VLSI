//8 bit alu

module alu(a , b , select , out ,carry , flag);

input [7:0] a ,b ;
input [3:0] select;

output reg[7:0] out;
output carry;
output reg flag ;

wire [8:0]temp;

assign temp = {1'b0 , a} + {1'b0 , b};
assign carry = (select == 4'b0000) ? temp[8] : 1'b0;

always @(*)

begin
case(select)
        4'b0000: out = temp[7:0];                 // Addition
        4'b0001: out = a - b;                     // Subtraction
        4'b0010: out = a & b;                     // AND
        4'b0011: out = a | b;                     // OR
        4'b0100: out = a ^ b;                     // XOR
        4'b0101: out = ~a;                        // NOT A
        4'b0110: out = a << 1;                    // Logical Left Shift
        4'b0111: out = a >> 1;                    // Logical Right Shift
        4'b1000: out = (a < b) ? 8'b00000001 : 8'b00000000;  // check if less than
        default: out = 8'b00000000;               // Default case

endcase
        if(out == 8'b00000000)
         
          flag= 1'b1;
        else 
        flag = 1'b0; 


end

endmodule
