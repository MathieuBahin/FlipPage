#include <Arduino.h>
#include <SPI.h>
#include "Adafruit_BLE.h"
#include "Adafruit_BluefruitLE_SPI.h"
#include "Adafruit_BluefruitLE_UART.h"

#include "BluefruitConfig.h"

#if SOFTWARE_SERIAL_AVAILABLE
  #include <SoftwareSerial.h>
#endif

#define FACTORYRESET_ENABLE         0
#define MINIMUM_FIRMWARE_VERSION    "0.6.6"

/* ...hardware SPI, using SCK/MOSI/MISO hardware SPI pins and then user selected CS/IRQ/RST */
Adafruit_BluefruitLE_SPI ble(BLUEFRUIT_SPI_CS, BLUEFRUIT_SPI_IRQ, BLUEFRUIT_SPI_RST);

#define D "4B" /* page up */
#define G "4E" /* page down */

#define BTNL 5
#define BTNR 6

/* called when the left button is pressed *
 *  send over BLE the command to flip the page
 */
void send_left(){
  ble.println(F("AT+BLEKEYBOARDCODE=00-00-" G "-00-00-00-00"));
  Serial.println("Sent left");
  //delay(500);
  ble.println(F("AT+BLEKEYBOARDCODE=00-00"));
  Serial.println("");
}

/* called when the right button is pressed *
 *  send over BLE the command to flip the page
 */
void send_right(){
  ble.println("AT+BLEKEYBOARDCODE=00-00-" D "-00-00-00-00");
  Serial.println("Sent right");
  ble.println("AT+BLEKEYBOARDCODE=00-00");
  Serial.println("");
}

int vl, vr; /* previous state */


void setup(void)
{

  Serial.begin(9600);
  /* Initialise the module */
  Serial.print(F("Initialising the Bluefruit BLE module: "));

  if ( !ble.begin(VERBOSE_MODE) )
  {
    Serial.println(F("Couldn't find Bluefruit, make sure it's in Command mode & check wiring?"));
    while(1);
  }
  Serial.println( F("OK!") );

  if ( FACTORYRESET_ENABLE )
  {
    /* Perform a factory reset to make sure everything is in a known state */
    Serial.println(F("Performing a factory reset: "));
    if ( ! ble.factoryReset() )
    {
      Serial.println(F("Couldn't factory reset"));
      while(1);
    }
  }

  /* Disable command echo from Bluefruit */
  ble.echo(false);

  /* Change the device name to make it easier to find */
  Serial.println(F("Setting device name to 'PageFlip1': ")); /*********************************** CHANGE NAME HERE ******************************/
  if (! ble.sendCommandCheckOK(F( "AT+GAPDEVNAME=FlipPage1" )) ) 
  {
    Serial.println(F("Could not set device name?"));
    while(1);
  }

  /* Enable HID Service */
  Serial.println(F("Enable HID Service (including Keyboard): "));
  if ( ble.isVersionAtLeast(MINIMUM_FIRMWARE_VERSION) )
  {
    if ( !ble.sendCommandCheckOK(F( "AT+BleHIDEn=On" ))) 
    {
      Serial.println(F("Could not enable Keyboard"));
      while(1);
    }
  }else
  {
    if (! ble.sendCommandCheckOK(F( "AT+BleKeyboardEn=On"  ))) 
    {
      Serial.println(F("Could not enable Keyboard"));
      while(1);
    }
  }

  /* Add or remove service requires a reset */
  Serial.println(F("Performing a SW reset (service changes require a reset): "));
  if (! ble.reset() ) 
  {
    Serial.println(F("Couldn't reset??"));
    while(1);
  }

  Serial.println();

  pinMode(BTNL, INPUT_PULLUP);
  pinMode(BTNR, INPUT_PULLUP);
  vr = digitalRead(5);
  vl = digitalRead(6);
  
  Serial.println(F("Configure IO pins : OK"));
  Serial.println();
}

/**************************************************************************/
/*!
    @brief  Constantly poll for new command or response data
*/
/**************************************************************************/
void loop(void)
{
  char sl, sr;
  sr = digitalRead(5);
  sl = digitalRead(6);

  if(sr != vr)
  { /* state changed */
    send_left();
    delay(700);
    vr = sr; /* save new state */
  }
  else
  {
    if(sl != vl)
    { /* state changed */
      send_right();
      delay(700);
      vl = sl; /* save new state */
    }
  } 
}
