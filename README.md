# VLSI
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


![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_1/assets/160568654/35accf89-84fa-43f1-be08-02b5c54aa742)






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
![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_1/assets/160568654/a9e24045-b0e5-407e-8ce0-35bec1d18610)


## HALF ADDER:

![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_1/assets/160568654/fdadb42f-eafb-4bf1-aaf9-07d0890185b7)








## PROGRAM:
module ha (a,b,s,c);<br>
input a,b;<br>
output s,c;<br>
xor g1(s,a,b); O and g2 (c,a,b);<br>
endmodule

## OUTPUT:
![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_1/assets/160568654/7188e62f-ae24-434c-8e21-2eb3f0c5e071)


## HALFSUBTRACTOR:

![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_1/assets/160568654/78384b3d-68c0-48ae-9012-a2293c8089f7)

## PROGRAM:
module hs (a, b, diff, borr);<br>
input a,b;<br>
output diff, borr;<br>
xor gl (diff,a,borr); <br>
and g2 (borr, -a,b);<br>
endmodule

## OUTPUT:

![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_1/assets/160568654/53f0c43e-8fa0-4d9f-9f33-542e0da05ee5)








## FULLADDER:



![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_1/assets/160568654/73f092e1-afe7-41d1-a45d-c5ec0f738cf6)




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


![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_1/assets/160568654/67c16592-c919-4d58-aa23-a17e6a06adf7)








## FULLSUBTRACTOR:

![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_1/assets/160568654/d507cbc5-cd95-4ff2-8ea5-7518655bef14)





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

![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_1/assets/160568654/237138cf-faee-4ae4-8ccb-27016fc33996)




## 8-BIT-RIPPLE-CARRY-ADDER:
![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_1/assets/160568654/9a695cb7-f4ed-4d44-85f6-a5aac1bec7d4)


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
![image](https://github.com/Udayabharathim/VLSI_EXPERIMENT_1/assets/160568654/6042457a-872d-4d59-a1d1-d1092e80b02a)
## RESULT:
	The simulate and synthesis Logic Gates, Adders and Subtractor using VIVADO is successfully verified.

