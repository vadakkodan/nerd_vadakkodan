onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /siso_book_tb/A_par
add wave -noupdate /siso_book_tb/CLK
add wave -noupdate /siso_book_tb/Clear_b
add wave -noupdate -radix unsigned /siso_book_tb/I_par
add wave -noupdate /siso_book_tb/LSB_in
add wave -noupdate /siso_book_tb/MSB_in
add wave -noupdate /siso_book_tb/count
add wave -noupdate /siso_book_tb/s0
add wave -noupdate /siso_book_tb/s1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {110000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 205
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {145088 ps}
