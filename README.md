# SIMULATE AND SYNTHESIS LOGIC GATES, ADDERS AND SUBTRACTOR USING VIVADO
## AIM: 
To simulate and synthesis Logic Gates, Adders and Subtractor using VIVADO

## APPARATUS REQUIRED: VIVADO 2023.2

## PROCEDURE:
 STEP:1 Start the Vivado, Select and Name the New project.<br>
 STEP:2 Select the device family, device, package and speed. <br>
STEP:3 Select new source in the New Project and select Verilog Module as the Source type.<br>
STEP:4 Type the File Name and Click Next and then finish button. Type the code and save it.<br>
STEP:5 Select the Behavioural Simulation in the Source Window and click the check syntax.<br>
STEP:6 Click the simulation to simulate the program and give the inputs and verify the outputs as per the truth table.

## LOGIC-GATES:


![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-1/assets/160568654/9415fe63-c582-4062-be29-990de4bea680)




## PROGRAM:
module fs(a,b,c0,c1,c2,c3,c4,c5,c6);<br>
input a,b;<br>
output co,c1,c2,c3,c4,c5,c6;<br>
or g1 (co,a,b);<br>
and g2 (c1,a,b);<br>
xor g3 (c2,a,b);<br>
nand g4 (c3,a,b);<br>
nor g5 (c4,a,b);<br>
not g6(c5,a);<br>
xnor g7 (c6,a,b);<br>
endmodule


## OUTPUT: 

![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-1/assets/160568654/1a5cdc3f-2b04-43b2-8481-8c927f9a5f20)


## HALF ADDER:




![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-1/assets/160568654/1f3053f8-10e1-4866-a8c4-98fc93b61ccc)





## PROGRAM:
module ha (a,b,s,c);<br>
input a,b;<br>
output s,c;<br>
xor g1(s,a,b); O and g2 (c,a,b);<br>
endmodule

## OUTPUT:
![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-1/assets/160568654/8f3d9340-9242-44db-b036-de747dcf0ec6)


## HALFSUBTRACTOR:

![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-1/assets/160568654/ff1f3f75-49a8-465d-b89e-d6c0e2e3bdc6)


## PROGRAM:
module hs (a, b, diff, borr);<br>
input a,b;<br>
output diff, borr;<br>
xor gl (diff,a,borr); <br>
and g2 (borr, -a,b);<br>
endmodule

## OUTPUT:



![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-1/assets/160568654/8c632ef1-17e9-4b00-9fc7-4d35d5d6b8fc)







## FULLADDER:



![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-1/assets/160568654/47107752-6e50-4d0b-bb50-6c5db396bf50)




## PROGRAM:
module fa (a,b,c,sum, carry);<br>
input a,b,c;<br>
output sum, carry;<br>
wire w1,w2,w3;<br>
xor gl(wl,a,b);<br>
xor g2 (w2,a,b);<br>
xor g3 (sum, w1,c);<br>
and (w3,c,w1);<br>
or g5 (carry, w3,w2);<br>
endmodule

## OUTPUT:

![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-1/assets/160568654/1e5c590e-9b5c-453d-b060-282bf1cda2b6)


## FULLSUBTRACTOR:


![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-1/assets/160568654/0665aac7-5288-438f-be3a-8b367707c546)




## PROGRAM:
module fs(a,b,c,diff,borrow);<br>
input a,b,c;<br>
output diff, borrow;<br>
wire w1,w2,w3;<br>
xor gl (wl,a,b);<br>
and g2 (w2,~a,b);<br>
xor g3 (diff,wl,c);<br>
and (w3,c,~wl); <br>
or g5 (borrow,w3,w2);<br>
endmodule

## OUTPUT:

![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-1/assets/160568654/221e2375-fd36-434a-9e3d-d1ff8354bf41)





## 8-BIT-RIPPLE-CARRY-ADDER:

![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-1/assets/160568654/555344cc-4a94-4af9-aaa8-a75b3e4378a5)


## PROGRAM:
module FA(a, b, c, sum, carry);<br>
input a, b, c;<br>
output sum, carry;<br>
assign sum=a ^ b ^ c;<br>
assign carry=a & b|b & c|a & c;<br>
endmodule<br>
<br>
module RCA(a, b, c, sum, carry);<br>
input [7:0] a, b;<br>
input c;<br>
output [7:0] sum;<br>
output carry;<br>
wire [6:0] w;<br>
FA f1(a[0], b[0], c, sum[0], w[0]);<br>
FA f2(a[1], b[1], w[0], sum[1], w[1]);<br>
FA f3(a[2], b[2], w[1], sum[2], w[2]);<br>
FA f4(a[3], b[3], w[2], sum[3], w[3]);<br>
FA f5(a[4], b[4], w[3], sum[4], w[4]);<br>
FA f6(a[5], b[5], w[4], sum[5], w[5]);<br>
FA f7(a[6], b[6], w[5], sum[6], w[6]);<br>
FA f8(a[7], b[7], w[6], sum[7], carry);<br>
endmodule


## OUTPUT:

![image](https://github.com/Udayabharathim/VLSI-LAB-EXP-1/assets/160568654/52750733-70f7-4f3b-adf7-924313bae717)


## RESULT:
	The simulate and synthesis Logic Gates, Adders and Subtractor using VIVADO is successfully verified.

