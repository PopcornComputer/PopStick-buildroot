# PopStick™ Buildroot Environment
[![Follow Source Parts on Twitter][twitter-follow-shield]][twitter-follow]
[![Subscribe to Source Parts' Subreddit][reddit-subscribers-shield]][sourceparts-subreddit]
<p align="center"><img width="80%" src="https://usbcomputer.com/images/banner.jpg" alt="PopStick USB Computer Device"></p>

## Purchase
**PopStick™** is available for purchase in our webstore: [https://shop.popcorncomputer.com/products/popstick][webstore]

## Learn More
For a general overview, please visit the PopStick™ USB Computer website: [https://usbcomputer.com][usbcomputer]

To learn how to use PopStick™ or learn in more detail about how it works, please make sure to check out the link to our documentation below.

## Documentation
To view the documentation stored in this repository please visit: [https://docs.usbcomputer.com][usbcomputer-docs]

If you have done something cool with **PopStick™** or feel that something is missing from the documentation, please feel free to open an issue on this repository or submit a Pull Request. The source files for our documentation website can be found in the /docs folder in this repository.

## Description of Buildroot from Official README
```
Buildroot is a simple, efficient and easy-to-use tool to generate embedded
Linux systems through cross-compilation.

The documentation can be found in docs/manual. You can generate a text
document with 'make manual-text' and read output/docs/manual/manual.text.
Online documentation can be found at http://buildroot.org/docs.html

To build and use the buildroot stuff, do the following:

1) run 'make menuconfig'
2) select the target architecture and the packages you wish to compile
3) run 'make'
4) wait while it compiles
5) find the kernel, bootloader, root filesystem, etc. in output/images

You do not need to be root to build or run buildroot.  Have fun!

Buildroot comes with a basic configuration for a number of boards. Run
'make list-defconfigs' to view the list of provided configurations.

Please feed suggestions, bug reports, insults, and bribes back to the
buildroot mailing list: buildroot@buildroot.org
You can also find us on #buildroot on OFTC IRC.

If you would like to contribute patches, please read
https://buildroot.org/manual.html#submitting-patches
```
## License & Copyright
Buildroot is licensed GPL2.[^1]<br>
GitHub workflow scripts and flash.sh script are licensed under a
Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.<br>
[![CC BY-NC-SA 4.0][cc-by-nc-sa-image]][cc-by-nc-sa]

**PopStick™** is a trademark of Source Parts Inc.

[^1]: https://github.com/PopcornComputer/PopStick-buildroot/blob/main/COPYING

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-sa-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[twitter-follow]: https://twitter.com/intent/follow?screen_name=sourceparts
[twitter-follow-shield]: https://img.shields.io/twitter/follow/sourceparts?style=social&logo=twitter
[sourceparts-subreddit]: https://reddit.com/r/sourceparts
[reddit-subscribers-shield]: https://img.shields.io/reddit/subreddit-subscribers/sourceparts?style=social
[usbcomputer]: https://usbcomputer.com
[usbcomputer-docs]: https://docs.usbcomputer.com
[webstore]: https://shop.popcorncomputer.com/products/popstick
