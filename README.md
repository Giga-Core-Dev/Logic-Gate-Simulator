# Logic-Gate-Simulator

Logic Gate Simulator is an open-source tool for experimenting with and learning about logic gates. Features include drag-and-drop gate layout and wiring, and user created "integrated circuits".

Developer: steven777400

** VERSION 1.4

Toggleable show true/false values on gates and wires
"End user mode" which hides everything except input/output type gates

Some portions of this version implemented by CIS 269 Spring 2011

Create IC button now shows the regions 
(CREDIT: John Hemphill, Abraham Bergerson, Matt Porter, Shawn Brandenburg)

Zoom now based on Ctrl-Wheel, also zooms more relative to center
(CREDIT: Jason Kerrigan, Will Colborn, Jimmy Hadley, Jesse Ferris)

Gates can scroll canvas before they are dropped.
(CREDIT: John Hemphill, Abraham Bergerson, Matt Porter, Shawn Brandenburg)

Text/numeric typing input improvements, less dangerous.
(CREDIT: Jason Kerrigan, Will Colborn, Jimmy Hadley, Jesse Ferris)

Right-click "isolate" to show only gates which interact with selected gate.
(CREDIT: Kiefer Hagin, Damian Thompson, Zach Kamerling, Taylor Hildebrand)

I/O gates display first letter of their name.
(CREDIT: Dan Bard, Josh Braaten, Drew Funk, Jeff Thomas)




** VERSION 1.3

Fixed clear selection on new and load, undo/redo
Undo on remove input for variable inputs restores old wire
Reducing inputs on ic now gives warning
BCD and Two's Complement support on numeric gates
Keyboard move and rotate now update wire positions
Single circuit thread and update batching changes visual performance. Hopefully for the better on large circuits.
Memory leaking improved; not yet completely fixed

** VERSION 1.2

Buffer gate
Mouse wheel zoom
Keyboard shortcuts for zooming
Keyboard shortcuts for rotation
Multiple input and, or, nor, and nand gates
Scroll on drag for connecting wires and selection box

** VERSION 1.1

IC Names now centered horizontally as well as vertically
Zoom slider is now reset after new or open
Bottom text line now context-sensitive and indicates some available commands
More sane thread handling
File association for gcg
Improved circuit timing when speed is fast (< 20 ms delay)
Oscilloscope
Clock precession calculated (more accurate now)
Copy/paste on various gates now retains data like name and value