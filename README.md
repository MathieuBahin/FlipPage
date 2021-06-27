# FlipPage
Hello everyone,
I would like to share with you today a project that I developed for my needs.

This product let's you turn pages on your tablet with your feets. That's a game changer when you tried one, you no longer have to stop playing to turn a page etc.

I am a guitarist and I have a software (MobileSheets) on my tablet that allows me to display my scores on stage without the famous binder with pages that turn when there is wind.

Similar products exist on the market for a price too high for my taste. I have one but it is no longer compatible with my new tablet.

This page is here to explain how you can build one by yourself.

<img src="https://github.com/MathieuBahin/FlipPage/blob/main/image/FlipPageBox.jpg" width="200" >

## Electronics
What do we need ?
- a microcontroler
- 2 buttons
- a bluetooth module

I will be using an Arduino Nano for it's size and ease of programming.
Regarding the bluetooth module we need a module that is "HID" compatible. An HID module is meant to be a keyboard controler, mouse, etc. 

It won't work if your bluetooth module is not "HID" compatible.

After lots of research i found one : the [Adafruit Bluefruit LE UART](https://www.adafruit.com/product/2479)

Based on the nRF51822 bluetooth chip.

I decided to add an extra USB connector as a power input, you can try to use the one from the Arduino Nano if you wish.

### Components used

| Name                  |  Cost |
| --------------------- |:-----:|
| Arduino Nano          |   $2  |
| [Bluefruit SPI BLE](https://www.adafruit.com/product/2479)     | $17.5 |
| USB connector         |  $0.2 |
| [Footswitch](https://www.ebay.fr/itm/262356324402)            |  $4   |
| [Nut](https://www.amazon.fr/gp/product/B00WO7N4PA/)      | $8|
| [Bolt](https://www.amazon.fr/gp/product/B073W7288P/)     | $12|

I used a footswitch like this one :
<img src="https://github.com/MathieuBahin/FlipPage/blob/main/image/footswitch.jpg" width="200" >
### KiCad schematic and routing
You will find the files in the folder KiCad.
I printed the PCB at [JLCPCB](https://jlcpcb.com/), reliable and low cost.

<img src="https://github.com/MathieuBahin/FlipPage/blob/main/image/FlipPagePCB.jpg" width="200" >

## Arduino development
You can use whatever IDE fits you, I used the Arduino IDE.

Add the lib to the libraries folder (generaly in Documents\Arduino\libraries).

Choose the Board : Arduino Nano and the processor that fits your card.

Then connect the Arduino (not the power usb connector) and compile/flash the software. 

You can open the Serial Monitor to see the initialisation.

Now you are done, the only thing left is the casing.

## 3D Printer
My 3D printer is a Creality Ender 3X I'm using black PLA.

You will find the Solidworks files in the folder associated.

You can make the assembly if you wish i didn't upload mine. (Also save the PCB in .step from KiCad to have a full assembly)

The box printing time is around 12h30 at 40%.

The top printing time is around 1h30 at 40%.
