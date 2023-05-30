pass-qr
===

A [password-store](https://www.passwordstore.org/) extension to print
passwords as QR codes.  Useful for logging in to something on a phone
that you don't necessarily want all your passwords on.

Install with `make install` and uninstall with `make uninstall`.
Depends on the [qrencode](https://fukuchi.org/works/qrencode/)
command-line utility.  You'll need to set several environemnt
variables set in order to use this, see pass(1) for details.

Future Work
---
Maybe pass the `-t,--type` option to qrencode; I think UTF8 is a
perfectly reasonable default.


