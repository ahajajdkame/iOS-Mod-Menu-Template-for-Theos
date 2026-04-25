#import "Macros.h"

#define AppName "Ahmedaltaee123's Application"
#define OwnerID "AaVgqH9eoa"
#define AppSecret "8a2615bfadb1706820f708242fd6540aa6c5f46c013db54c643ac43aa00aed29"
#define Version "1.0"

void setup() {
  patchOffset(ENCRYPTOFFSET("0x1002DB3C8"), ENCRYPTHEX("0xC0035FD6"));

  [switches addSwitch:NSSENCRYPT("Masskill") 
    description:NSSENCRYPT("Teleport all enemies to you")];

  [switches addOffsetSwitch:NSSENCRYPT("God Mode") 
    description:NSSENCRYPT("You cannot die") 
    offsets: {ENCRYPTOFFSET("0x1005AB148")} 
    bytes: {ENCRYPTHEX("0xC0035FD6")}];

  [switches addTextfieldSwitch:NSSENCRYPT("Custom Gold") 
    description:NSSENCRYPT("Enter your own gold amount") 
    inputBorderColor:[UIColor redColor]];

  [switches addSliderSwitch:NSSENCRYPT("Move Speed") 
    description:NSSENCRYPT("Set your custom move speed") 
    minimumValue:0 maximumValue:10 
    sliderColor:[UIColor redColor]];
}

void setupMenu() {
  [menu setFrameworkName:NULL];
  menu = [[Menu alloc] initWithTitle:NSSENCRYPT("AHMED ALTAEE - ONESTATE") 
            titleColor:[UIColor whiteColor] 
            titleFont:NSSENCRYPT("Copperplate-Bold") 
            menuColor:[UIColor colorWithRed:0.10 green:0.10 blue:0.10 alpha:0.95] 
            menuIcon:NSSENCRYPT("")];
  
  [menu setMaxVisibleSwitches:4];
}

%ctor {
  setup();
  setupMenu();
}
