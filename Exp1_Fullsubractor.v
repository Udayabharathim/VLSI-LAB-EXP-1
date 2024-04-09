module fs(a,b,c,diff,borrow); 
input a,b,c; 
output diff, borrow; 
wire w1,w2,w3; 
xor gl (wl,a,b); 
and g2 (w2,~a,b); 
xor g3 (diff,wl,c); 
and (w3,c,~wl);  
or g5 (borrow,w3,w2); 
endmodule
