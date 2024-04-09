module FA(a, b, c, sum, carry); 
input a, b, c; 
output sum, carry; 
assign sum=a ^ b ^ c; 
assign carry=a & b|b & c|a & c; 
endmodule 
 
module RCA(a, b, c, sum, carry); 
input [7:0] a, b; 
input c; 
output [7:0] sum; 
output carry; 
wire [6:0] w; 
FA f1(a[0], b[0], c, sum[0], w[0]); 
FA f2(a[1], b[1], w[0], sum[1], w[1]); 
FA f3(a[2], b[2], w[1], sum[2], w[2]); 
FA f4(a[3], b[3], w[2], sum[3], w[3]); 
FA f5(a[4], b[4], w[3], sum[4], w[4]); 
FA f6(a[5], b[5], w[4], sum[5], w[5]); 
FA f7(a[6], b[6], w[5], sum[6], w[6]); 
FA f8(a[7], b[7], w[6], sum[7], carry); 
endmodule
