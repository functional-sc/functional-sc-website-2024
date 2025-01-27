custom-url:: ulisp

- # Wecome to uLisp!
  
  Welcome to your personal Lisp Machine!  This is a 32-bit computer with limited memory and little permanent storage.
  
  It's running a bespoke version of uLisp that contains special functions for operating the (very bright) LEDs.
  
  It runs a subset of Common Lisp, take a look at [getting started](http://www.ulisp.com/show?1AAO) and the [language reference](http://www.ulisp.com/show?3L)
- ### Connecting
  
  To connect to it:
  * on Android use [Serial USB Terminal](https://play.google.com/store/search?q=serial%20usb%20terminal&c=apps&hl=en_US&gl=US)
  * via [Arduino Stuido](https://learn.adafruit.com/adafruit-neo-trinkey/arduino-ide-setup)
  * Linux: `stty -F /dev/ttyACM0 9600  raw -clocal -echo icrnl ; screen /dev/ttyACM0 9600`
  
  
  When connected you should see 
  
  ```
  enter ~ to use LISP
  enter ~ to use LISP
  enter ~ to use LISP
  ```
  
  You now have a full REPL!
  ```
  2329> (+ 1 1 40)
  42
  
  2329>
  ```
  - ### The Lights
  
  Each light is set by three 8-bit concatenated numbers (red, green, blue).  Seding these directly to `disp` will set all the lights to that RGB color:
  
  ```
  (disp 127 0 0) ; red 50%
  (disp 0 255 0) ; green 100%
  (disp 0 0 127) ; blue 50%
  (disp 64 0 32) ; purple
  (disp 255 255 255) ; blinding
  ```
  
  The convenience function `disp` is overloaded, sending `disp` four numbers independently operates each light, use `color` to set them to different RGB colors:
  
  ```
  (disp 
  (color 4 0 0)
  (color 0 4 0) 
  (color 0 0 4)
  (color 2 0 1))
  ```
  
  And `disp-off` or just `(disp)` turns all lights off
  - ### Personalize this at home!
  
  The 'animate' function utilizes the global variable 'animate-colors'.  Set 'animate colors' to a list of 4 colors to cycle through:
  
  ```
  (defvar animate-colors 
  (list (color 4 0 0) ; red
        (color 2 0 0) ; less red
        (color 0 0 0) ; off
        (color 0 0 0))) 
  (animate)
  ```
  
  Set `user` to whatever you like
  ```
  (defvar user "Sexy Beast")
  (animate)
  ```
  
  Save all your changes and specify the startup function!
  
  ```
  (save-image 'animate)
  ```
- ### Hardware-Specific Functions
  
  Use [millis](http://www.ulisp.com/show?3L#millis) to get the milliseconds since startup and [delay](http://www.ulisp.com/show?3L#delay) to pause
- ### Code
  
  Unorganized code can be found [here on github](https://github.com/functional-sc/uLisp-trinkey-deployment)