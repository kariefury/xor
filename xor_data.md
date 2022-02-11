For a 2-bit XOR the Boolean function is A(B') + (A')B = C and then for a static CMOS implementation of that function the transistor input network is uneven for the 2 inputs, so A might go into 2 transistors while B goes into 4 transistors. 
Also, the speed of operation between the PMOS transistors and the NMOS transistors is uneven, so practically building an XOR where the time it takes the output to be the correct logical value for the original values of A and B, to what they are for the new calculation is uneven. 
![xor2](https://github.com/kariefury/xor/blob/main/xor2.PNG)

Simulating that circuit with sin wave for the power. (1.8V is standard for Skywater 130nm).

ain01 and bin01 are input waves.

xout_2_xor2 is the output with ain01 to A and bin01 to B.

xout_2_swap_xor2 is the output with bin01 to A and ain01 to B.

![sin_power](https://github.com/kariefury/xor/blob/main/xor_00_to_01_to_11_to_10_sin_power.PNG)

![sin_power 00 to 11](https://github.com/kariefury/xor/blob/main/xor_11_to_00_sin_power.PNG)

Especially if one is to manipulate the power supplied to the gates, it might be possible to determine if the output 1 is because of 01 or 10. 

Simulating only looking at transitions 01,01 and for 1.0V power.

ain01 and bin01 are input waves.

xout_2_xor2 is the output with ain01 to A and bin01 to B.

xout_2_swap_xor2 is the output with bin01 to A and ain01 to B.

![low power 01 10](https://github.com/kariefury/xor/blob/main/xor_01_to_10_low_power.PNG)
Simulating only looking at transitions 01,01 and for 0.9V to power -0.1V ground
![low power 01 10](https://github.com/kariefury/xor/blob/main/xor_01_to_10_low_power_neg_sub.PNG)


Simulating only looking at transitions 00,11 and for 1.0V power.

ain11 and bin11 are input waves.

xout_3_xor2 is the output with ain11 to A and bin11 to B.

xout_3_swap_xor2 is the output with bin11 to A and ain11 to B.

![low power 00 11](https://github.com/kariefury/xor/blob/main/xor_11_to_00_low_power.PNG)
Simulating only looking at transitions 01,01 and for 0.9V to power -0.1V ground
![low power 00 11](https://github.com/kariefury/xor/blob/main/xor_11_to_00_low_power_neg_sub.PNG)




###Marc Riedel's Cyclic combinational logic for XOR

The circuit is two 2-input XOR gates, with input A into XOR1 as well as XOR2, and the output of XOR1 input to XOR2, and the output of XOR2 into XOR1.

![picture of circuit described in preceeding paragrah](https://github.com/kariefury/xor/blob/main/riedels_cyclic_xor.png)

From the output of that circuit as long as the power is held constant the output tapped from XOR2 is the inverse of A. 

That does still meet the number of inputs is equal the number of outputs and since the circuit is now just an inverter and inverter's are reversible it seems like that is okay, because it is not a two input XOR that is reversible. 

If the power is taken too low for the transistors to switch, then the output is just a repeat of A. 
![Plot showing highlighted output of ycyclic and Ain](https://github.com/kariefury/xor/blob/main/riedels_cyclic_xor_highlighted.png)
