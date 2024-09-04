PICO_TOOLCHAIN_PATH = /home/semrah/.pico-sdk/toolchain/13_2_Rel1
CPP = $(PICO_TOOLCHAIN_PATH)/bin/arm-none-eabi-cpp
CC=$(PICO_TOOLCHAIN_PATH)/bin/arm-none-eabi-gcc
AS=$(PICO_TOOLCHAIN_PATH)/bin/arm-none-eabi-as

%.i: %.c
	$(CPP) $< > $@

%.s: %.i
	$(CC) -S $<

%.o: %.s
	$(AS) $< -o $@

hello.txt:
	echo "hello world!" > hello.txt

clean:
	rm -f main.i main.s second.i second.s hello.txt

.PHONY: clean
