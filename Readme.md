# TAPI

TAPI is a __T__ext-based __A__pplication __P__rogramming __I__nterface. It
replaces the Mach-O Dynamic Library Stub files in Apple's SDKs to reduce SDK
size even further.

The text-based dynamic library stub file format (.tbd) is a human readable and
editable YAML text file. The _TAPI_ projects uses the _LLVM_ YAML parser to read
those files and provides this functionality to the linker as a dynamic library.

This repository contains the copy of the Tapi code contained in
the `PureDarwin/Tapi` repository (since removed from GitHub). It
contains only the `libtapi.dylib` file; none of the tools, documentation,
or other files in other forks of Tapi ([such as this one](https://github.com/ributzka/tapi)) are included.

## Building TAPI

This version of TAPI is self-contained, except for its dependency on LLVM.
I have tested it against LLVM 5.0.0 installed via [Homebrew](https://brew.sh).
If your copy of LLVM is installed somewhere else, you'll need to modify
the `LLVM_HEADER_DIR` and `LLVM_LIBRARY_DIR` build settings in Xcode
(they're defined at the project level) to point to where the headers and
libraries for LLVM can be found.
