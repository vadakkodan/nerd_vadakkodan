#vlib work

vlog /home/vadakkodan/Desktop/v_siso_book/siso_book.v
vlog /home/vadakkodan/Desktop/v_siso_book/siso_tb.v

view structure
vsim -L work -voptargs=+acc -t 1ps siso_book_tb
do wave.do
run -all
