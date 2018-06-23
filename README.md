# Robot Challenge
  - The application is a simulation of a toy robot moving on a square tabletop, of dimensions 5 units x 5 units.
  - There are no other obstructions on the table surface.
  - The robot is free to roam around the surface of the table, but must be prevented from falling to destruction. Any movement that would result in the robot falling from the table must be prevented, however further valid movement commands must still be allowed.
  - The application receives the following command:
  ```
  PLACE X,Y,F
  MOVE
  LEFT
  RIGHT
  REPORT
  ```
  - PLACE will put the toy robot on the table in position X,Y and facing NORTH, SOUTH, EAST or WEST.
  - The origin (0,0) can be considered to be the SOUTH WEST most corner.
  - The first valid command to the robot is a PLACE command, after that, any sequence of commands may be issued, in any order, including another PLACE command. The application should discard all commands in the sequence until a valid PLACE command has been executed.
  - MOVE will move the toy robot one unit forward in the direction it is currently facing.
  - LEFT and RIGHT will rotate the robot 90 degrees in the specified direction without changing the position of the robot.
  - REPORT will announce the X,Y and orientation of the robot.
  - A robot that is not on the table can choose to ignore the MOVE, LEFT, RIGHT and REPORT commands.

### Requirements
  - Ruby > 2.0.0
  - Bundler 1.16

### Test
  To run all test:
  ```
  rspec
  ```
  To run individual test:
  ```
  rspec spec/robot_spec.rb
  ```

### Running
  To run the application, update commands in `input.txt` then run:
  ```
  ruby main.rb
  ```
