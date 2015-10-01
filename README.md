# 31-x-8-ROM
Verilog module for a ROM using the Nexys-4 board. The rom needs to be able to hold 32 unsigned Integers each 8 Bits. Thus it must have32 address lines.

Functionally, the ROM should have:
1.  A parallel Load function using slide switches 7:0 labeled as D 7:0 and pressing button Left as well. 
2.  A Clear that should occur when pressing the Right button.  
3.  Address lines to address each of the 32 locations using the high 5 slide switches on the board switch 15:11 which are calledA 4:0 in the port list and in the constraint file.
4.  As the address lines are driven, the address should display in the high 5 LED 15:11, called Ao 4:0 in the port list and the constraint file.
5.  Also, whatever address is in the input, the low 8 leds should display the value stored in the ROM at the addressed location
