void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(LED_BUILTIN, OUTPUT);
}

void short_beep() {
  digitalWrite(LED_BUILTIN, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(200); 
  digitalWrite(LED_BUILTIN, LOW);    // turn the LED off by making the voltage LOW
}

void long_beep() {
  digitalWrite(LED_BUILTIN, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(500); 
  digitalWrite(LED_BUILTIN, LOW);    // turn the LED off by making the voltage LOW
}

void space() {
  delay(400);
}

void end_of_word() {
  delay(1000);
}

void letter_s() {
  short_beep();
  delay(100);
  short_beep();
  delay(100);
  short_beep();
}

void letter_o() {
  long_beep(); 
  delay(100);
  long_beep();
  delay(100);
  long_beep();  
}

// SOS
void loop() {
  letter_s();
  space();
  letter_o();
  space();
  letter_s();
  end_of_word();
}
