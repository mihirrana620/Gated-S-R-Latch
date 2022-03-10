# Mixed Signal Circuit Design and Simulation Marathon (FOSSEE IIT BOMBAY)

# Gated S-R Latch





# Abstract

In This Paper I am going to Design S-R Latch using
Verilog. Design and Implementation will be done in esim and
ngspice software. The SR Latch is a bistable 1-bit memory device
with two inputs, SET and RESET. The RESET input ’R’ resets
the device or causes the output 0 to be produced. The SET input
’S’ configures the device or generates output 1, while the RESET
input ’S’ configures the device or generates output 0. S and R
are the labels for the SET and RESET inputs, respectively. The
main objective was to design a mixed signal circuit for that I
have attached ADC in front of S-R Latch and DAC in behind of
S-R Latch to get input and output in analog form.


# Reference Circuit Diagram
![L7](https://user-images.githubusercontent.com/84765232/156878478-94f37cc9-1592-43cd-964e-dedc5adecf21.png)


# Reference Waveform

 ![IMG_20220227_214812](https://user-images.githubusercontent.com/84765232/156871906-9bf51ab8-680a-4a25-88b0-e87080f98bd2.jpg)

# Mixed Signal Circuit Design

![IMG_20220227_220834](https://user-images.githubusercontent.com/84765232/156871923-c90cc0fa-ca9c-496a-bc86-fa067f49ae62.jpg)
# Implemented Waveform

![I2](https://user-images.githubusercontent.com/84765232/156878089-c1ff86e6-b0b4-459e-97a9-ff9f4e8d73f3.png)


# Circuit Details

• Case 1 : S = 0, R = 0, and CLK = 1
The inputs of both NOR gates are Logic ’0’ in the
first case. They have no effect on the output because
neither of them dominates the inputs. As a result, the
outputs retain their previous states, i.e., the outputs do
not change. This is referred to as a Hold Condition or a
No Change Condition.

------------------

• Case 2 : S = 0, R = 1, and CLK = 1
The ’R’ input is 1 in this case, indicating that the NOR
Gate A output will be 0. (i.e., Q will be 0). (LOW).
Both of NOR Gate B’s inputs become 0 as a result, and
the NOR Gate B’s output is 1. (HIGH). Because a ’1’ at
input R causes the output to switch to one of its stable
states and then resets it to ’0,’ it is known as the RESET
input.

------------------

• Case 3 : S = 0, R = 1, and CLK = 1
In this case, the ’S’ input is 1, indicating that the NOR
Gate B output will be 0. As a result, both NOR Gate
A’s inputs become 0 and the NOR Gate A’s output, and
thus the value of Q, becomes 1. (HIGH). The S input is
known as the SET input because ’1’ at input S causes
the output to switch to one of its stable states and sets it
to ’1’.

------------------

• Case 4 : S = 1, R = 1, and CLK = 1
This input condition is forbidden because it causes both
NOR Gates’ outputs to be zero, which is incompatible
with complementary outputs. Even if this input condition
is met, a ’race condition’ between the NOR Gates occurs
if the next inputs are R = 0 and S = 0 (hold condition),
resulting in an unstable or unpredictable output state.

------------------

• Case 5 : CLK = 0
Regardless of the states of S or R, the outputs of the
two AND gates are forced to 0 when CLK = 0. As a
result, the circuit acts as if S and R are both 0, latching
the Q and not-Q outputs in their previous states.

# Truth Table


![Screenshot 2022-03-05 122123](https://user-images.githubusercontent.com/84765232/156872167-8d1d62a8-ff80-464c-8547-23a7c28fb32c.png)

# Software Used

**eSim** :
It is an Open Source EDA developed by FOSSEE, IIT Bombay. It is used for electronic circuit simulation. It is made by the combination of two software namely NgSpice and KiCAD.
For more details refer:
https://esim.fossee.in/home

**NgSpice** : 
It is an Open Source Software for Spice Simulations. For more details refer:
http://ngspice.sourceforge.net/docs.html

**Makerchip** : 
It is an Online Web Browser IDE for Verilog/System-verilog/TL-Verilog Simulation. Refer
https://www.makerchip.com/

**Verilator** :
It is a tool which converts Verilog code to C++ objects. Refer: https://www.veripool.org/verilator/


 # Circuit Design in esim

 ![Screenshot 2022-03-05 124401](https://user-images.githubusercontent.com/84765232/156872865-88e52e25-c3f2-4967-9f2d-be6ec725b880.png)

# Verilog Code

  ![Screenshot 2022-03-05 124647](https://user-images.githubusercontent.com/84765232/156872929-9a277607-9ce3-4fb1-89e1-2c2a04599768.png)
 
# Makerchip

  ```
  \TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/   /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/    /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/   

//Your Verilog/System Verilog Code Starts Here:
module Mihir_SR_Latch(Q, Qn, CLK, S, R);
   output Q;
   output Qn;
   input  CLK;   
   input  S;
   input  R;

   wire   S1;
   wire   R1;
   
   and(S1, CLK, S);
   and(R1, CLK, R);   
   nor(Qn, S1, Q);
   nor(Q, R1, Qn);
endmodule
         


//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  Q;//output
		logic  Qn;//output
		logic  CLK;//input
		logic  S;//input
		logic  R;//input
//The $random() can be replaced if user wants to assign values
		assign CLK = 1;
		always@(posedge clk) S = $random();
      always@(posedge clk) R = $random();
		Mihir_SR_Latch Mihir_SR_Latch(.Q(Q), .Qn(Qn), .CLK(CLK), .S(S), .R(R));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule

```
# MakerChip Plots

![image](https://user-images.githubusercontent.com/84765232/156873510-8319c823-c898-4606-9748-20794999a20b.png)

# Netlists

![image](https://user-images.githubusercontent.com/84765232/156873621-3a379db4-c199-422c-a48f-218331787a60.png)

# NgSpice Plots

![image](https://user-images.githubusercontent.com/84765232/156873835-5b4b3a47-7f91-4161-a6a9-d9750372efa7.png)
![image](https://user-images.githubusercontent.com/84765232/156873855-5adcbd4f-bed0-4fa0-b33d-91d2cd4d9400.png)
![image](https://user-images.githubusercontent.com/84765232/156873878-ce325aec-7f20-4d79-898a-826d64afbfee.png)
![image](https://user-images.githubusercontent.com/84765232/156873903-a522eed9-b607-46b9-a505-967950ad4cd5.png)
![image](https://user-images.githubusercontent.com/84765232/156873919-19576b41-db37-4ce9-9803-3f2728eaacdd.png)

# GAW Plot

![image](https://user-images.githubusercontent.com/84765232/156874581-b35529f6-86a9-4e4e-90c3-bfac2473f084.png)

# Python Plot

![image](https://user-images.githubusercontent.com/84765232/156874730-09e94000-b0ba-4732-8511-f1d01ecbd620.png)

# Steps to run generate NgVeri Model

1. Open eSim
2. Run NgVeri-Makerchip
3. Add top level verilog file in Makerchip Tab
4. Click on NgVeri tab
5. Add dependency files
6. Click on Run Verilog to NgSpice Converter
7. Debug if any errors
8. Model created successfully

# Steps to run this Project

1. Open a new terminal
2. Clone this project using the following command: ``` https://github.com/mihirrana620/Gated-S-R-Latch.git ```
3. Change directory: ``` cd Mihir_esim_project_files/Mihir_SR_Latch ```
4. Run ngspice: ``` npspice Mihir_SR_Latch.cir.out ```
5. To run the project in eSim:   <br /> • Run eSim  <br /> • Load the project  <br /> • Open eeSchema

# Acknowlegdements

1. FOSSEE, IIT Bombay
2. Steve Hoover, Founder, Redwood EDA
3. Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd. - kunalpghosh@gmail.com
4. Sumanto Kar, eSim Team, FOSSEE

# References

1. SR Flip Flop - Javatpoint. www.javatpoint.com. (n.d.). Retrieved February 27, 2022, from https://www.javatpoint.com/sr-flip-flop-in-digitalelectronics
2. https://www.allaboutcircuits.com/textbook/digital/chpt-10/s-r-latch
3. https://github.com/Eyantra698Sumanto/XOR-XNOR-Gate
