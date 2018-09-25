- [Introduction](#org9ee1f53)
- [Results](#org79b3089)
- [Conclusion](#org314162f)



<a id="org9ee1f53"></a>

# Introduction

The purpose of this project is to create an asyncronous reaction time. Outcomes include controls to start the timer, stop the timer and show the time, reset the timer, and show high scores. The reaction timer will be implemented using the Verilog Hardware Description language and synthesized using Terasic's DE10 Lite Board. Some implementation goals include using a finite state machine, counters, dividers, and shift registers.


<a id="org79b3089"></a>

# Results

As an overview, the reaction timer has 3 inputs: two buttons/keys and switch. Key 0, as labled by the DE10, starts the timer and stops the timer when it the timer is counting. Key 1 resets the timer and Switch 0 dispays the high score. The output of each input is contextual, meaning it depends on the current state. We represent this behavior by a state machine, illustrated above.

As a description of intended use, the starting state is the "reset" state. The user presses key 0 and the device waits a random amount of time before starting the timer. The user will know that the timer is running by a "Go Buffs" banner that scrolls accross the screen. The user then presses key 0 again to stop the timer and see the recorded time between when the timer started and when they reacted to it by pressing key 0. The time is meausured in milliseconds and is easily converted to seconds by inspection. For example if the display reads "010345" (please consult a doctor if this was your fastest possible time) means 10345 millisecond or 10.345 seconds. The timer maxes out at 999.999 seconds before looping back to zero. This isn't a huge issue considering average users stop the clock in less than a second on average. Hitting key 1 resets the timer back to "000000", ready for another run. Switching switch 0 in this state display the fastest time for that session.


<a id="org314162f"></a>

# Conclusion

Our team faced many obstacles throughout the desigb and build proccess, but ultimately we perservered and created a product that met all the criteria as requested of us.