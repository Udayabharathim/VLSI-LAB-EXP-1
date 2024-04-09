module hs (a, b, diff, borr); 
input a,b; 
output diff, borr; 
xor gl (diff,a,borr);  
and g2 (borr, ~a,b); 
endmodule
