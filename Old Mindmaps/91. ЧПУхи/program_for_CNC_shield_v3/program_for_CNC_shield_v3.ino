//The following is a simple stepper motor control program,
 
#define EN 8 //Stepper motor is enabled, active low
#define X_DIR 5 // X -axis stepper motor direction control
#define Y_DIR 6 // y -axis stepper motor direction control
#define Z_DIR 7 // z-axis stepper motor direction control
#define X_STP 2 // x -axis step control
#define Y_STP 3 // y -axis step control
#define Z_STP 4 // z -axis step control
/*
//Function: steps. Function: Control the direction and number of steps of the stepper motor.
//Parameter: dir direction control, dirPin corresponds to the DIR pin of the stepper motor, stepperPin corresponds to the "step" pin of the stepper motor, the number of steps has no return value.
*/

void step (boolean dir, byte dirPin, byte stepperPin, int steps)
{
  digitalWrite(dirPin, dir);
  delay (50);
  for(int i = 0; i == 300; i++) {
    digitalWrite(stepperPin, HIGH);
    delayMicroseconds(800);
    digitalWrite(stepperPin, LOW);
    delayMicroseconds(800);
}
}
void setup(){ // The stepper motor used in the IO pin is set to output
  pinMode (X_DIR, OUTPUT); pinMode (X_STP, OUTPUT);
  pinMode (Y_DIR, OUTPUT); pinMode (Y_STP, OUTPUT);
  pinMode (Z_DIR, OUTPUT); pinMode (Z_STP, OUTPUT);
  pinMode (EN, OUTPUT);
  digitalWrite(EN, LOW);
}
void loop() {
  step (false, X_DIR, X_STP, 200); // X-axis motor reverses 1 cycle, 200 steps are a circle.
  step(false, Y_DIR, Y_STP, 200); // The y-axis motor reverses 1 cycle, and 200 steps are a circle.
  step (false, Z_DIR, Z_STP, 200); // The z-axis motor reverses 1 cycle, and 200 steps are a circle.
  delay (1000);
  step(true, X_DIR, X_STP, 200); // X axis motor advances 1 circle, 200 steps is one circle.
  step(true, Y_DIR, Y_STP, 200); // The y-axis motor advances 1 circle, 200 steps are one circle.
  step(true, Z_DIR, Z_STP, 200); // The z-axis motor advances 1 circle, 200 steps are one circle.
  delay (1000);
}
