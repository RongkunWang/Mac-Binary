# Mac-Binary
to save some common binary used by Mac


## system level
### batch_eps_to_png.sh
pass in a list of directory, convert all eps files in the directory to png

### batch_pdf_to_png.sh
pass in a list of directory, convert all pdf files in the directory to png

### ks_smart
pass in kerberos token credential e.g. [nswdaq@CERN.CH]. will call kswitch to try to switch to it, if failed, do kinit.

### rl
shortcut equivalent for `readlink -f` on linux systems. Useful for returning full path of a file for sharing

## Math, HEP
### signify.py
pass in signal and background, calculate significance quickly.
