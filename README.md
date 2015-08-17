# square-museum
Square Museum Challenge Problem

This problem involves the famous Square Museum.  It occupies one floor of a building whose layout is on an N x N grid.  Each 1 x 1 square on the grid represents a room in the museum where different famous artists' interpretations of squares are on display.
 
You can think of each room in the museum as being index by (i, j) where both i and j are in (0...N) (the integers 0 to N-1).
 
This is the problem: there are two night security guards responsible for protecting the precious square artwork housed in the Square Museum.  One is stationed at room (i1, j1) and the other at (i2, j2).  They each have an individual responsibility for ensuring some set of the museum's rooms are safe, but they don't yet know what rooms they're each responsible for.  
 
You job is to assign room responsibilities between the guards according to these requirements and constraints:

- it's only possible to move from room to room in the up-down and left-right directions, not diagonally
- some rooms are locked during the night; these do not need to be assigned, and guards cannot move through them
- unlocked rooms must be assigned
- avoid redundant work; only one guard is assigned to a room
- assign with efficiency in mind: assume each guard moves at the same speed; assign responsibility for a room to the guard who can get there in the shortest amount of time from his/her station
