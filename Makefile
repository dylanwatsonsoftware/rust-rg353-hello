.PHONY: clean gnu

clean:
	rm -rf target

run:
	cargo run --features bevy/dynamic_linking

zig: clean
	PKG_CONFIG=/usr/local/bin/pkg-config cargo zigbuild --target arm-unknown-linux-gnueabihf

deploy:

logs:
	tail "/Volumes/AMBER ROMS/ports/rust-hello/log.txt"