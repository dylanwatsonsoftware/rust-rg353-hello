.PHONY: clean gnu

clean:
	rm -rf target

run: clean
	cargo run

zig: clean
	cargo zigbuild --target arm-unknown-linux-gnueabihf