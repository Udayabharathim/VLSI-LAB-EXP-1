module fa (a,b,c,sum, carry); 
input a,b,c; 
output sum, carry; 
wire w1,w2,w3; 
xor gl(wl,a,b); 
xor g2 (w2,a,b); 
xor g3 (sum, w1,c); 
and (w3,c,w1); 
or g5 (carry, w3,w2); 
endmodule
