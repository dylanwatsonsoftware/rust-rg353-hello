.PHONY: clean gnu

clean:
	rm -rf target

run: clean
	cargo run

zig:
	cargo zigbuild --target arm-unknown-linux-gnueabihf