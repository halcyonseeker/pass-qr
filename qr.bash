#!/usr/bin/env bash

cmd_qr_help () {
	cat <<-_EOF
Usage:
    $PROGRAM qr [version,--version,-v]
       Print extension version.
    $PROGRAM qr [help,--help,-h]
       Print help for the qr extension.
    $PROGRAM qr [password names....]
       Print passwords passed on the command line as QR codes.  It
       takes the first line of each password file, strips the newline,
       and prints the UTF-8 QR code to stdout.
_EOF
}

cmd_qr_version () {
	echo "$VERSION"
}

case "$1" in
	help|--help|-h)       cmd_qr_help ;;
	version|--version|-v) cmd_qr_version ;;
	*) for password in "$@"; do
		   echo
		   pass "$password" | head -1 | tr -d '\n' | qrencode -t UTF8
		   echo
		   shift
	   done ;;
esac
