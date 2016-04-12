isim force add /fpgaloop/clk 1 -radix bin -value 0 -radix bin -time 10 ns -repeat 20 ns
isim force add /fpgaloop/reset_h 1 -radix bin
isim force add /fpgaloop/rxf_l 1 -radix bin
isim force add /fpgaloop/clkb 0 -radix bin
isim force add /fpgaloop/rstb 0 -radix bin
run 210 ns
isim force add /fpgaloop/reset_h 0 -radix bin
run 200 ns
isim force add /fpgaloop/clkb 1 -radix bin -value 0 -radix bin -time 4 ns -repeat 8 ns 
isim force add /fpgaloop/rxf_l 0 -radix bin
run 20 ns
isim force add /fpgaloop/d 10101010 -radix bin
run 32 ns
isim force add /fpgaloop/d 01111111 -radix bin
run 20 ns
isim force add /fpgaloop/d 00111111 -radix bin
run 20 ns
isim force add /fpgaloop/d 00011111 -radix bin
run 20 ns
isim force add /fpgaloop/d 00001111 -radix bin
run 20 ns
isim force add /fpgaloop/d 00000111 -radix bin
run 20 ns
isim force add /fpgaloop/d 00000011 -radix bin
run 20 ns
isim force add {/fpgaloop/rxf_l} 1 -radix bin
isim force add {/fpgaloop/d} ZZZZZZZZ -radix bin
run 40 ns
#isim force add {/fpgaloop/rxf_l} 0 -radix bin
#run 20 ns
#isim force add {/fpgaloop/d} 00000001 -radix bin
#run 40 ns
#isim force add {/fpgaloop/d} 10000001 -radix bin
#run 20 ns
#isim force add {/fpgaloop/d} 11000000 -radix bin 
#run 20 ns
isim force add {/fpgaloop/rxf_l} 0 -radix bin 
run 20 ns
run 20 ns
isim force add {/fpgaloop/d} 10000001 -radix bin 
run 20 ns
isim force add {/fpgaloop/d} 11000000 -radix bin 
run 20 ns
isim force add {/fpgaloop/d} 11100000 -radix bin 
run 20 ns
isim force add {/fpgaloop/rxf_l} 1 -radix bin 
isim force add {/fpgaloop/d} ZZZZZZZZ -radix bin 
run 20 ns
run 20 ns
run 20 ns


