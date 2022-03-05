# Mixed Signal Circuit Design and Simulation Marathon

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
![IMG20220227221021](https://user-images.githubusercontent.com/84765232/156871721-cc29dfc1-c91d-46d8-8950-1da88cde202d.jpg) 

# Reference Waveform
 ![IMG_20220227_214812](https://user-images.githubusercontent.com/84765232/156871906-9bf51ab8-680a-4a25-88b0-e87080f98bd2.jpg)

# Mixed Signal Circuit Design
![IMG_20220227_220834](https://user-images.githubusercontent.com/84765232/156871923-c90cc0fa-ca9c-496a-bc86-fa067f49ae62.jpg)

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


 
