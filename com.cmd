restart -f
force -freeze sim:/compteur/h 1 20, 0 {70 ps} -r 100
force -freeze sim:/compteur/r 0 0, 1 300 ps,  0 {350 ps}
virtual signal {S} N
radix -hexadecimal
run 3000