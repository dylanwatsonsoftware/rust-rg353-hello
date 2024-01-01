# Rust RG353VS Hello

## Prerequisites
- Rust (`brew install rust`)
- Zig (`brew install zig`)
- pkg-config
- alsa-lib (linux only)


See Makefile for commands
# Run
`make run`

# RG353 Build
`make zig`

# Deploy
- Run `make zig`
- Copy `RustGnuTest.sh` into `/ports` folder of SD card (the one that contains the ROMs)
- Copy `/target` to `/ports/rust-hello/target` of SD card
- Profit