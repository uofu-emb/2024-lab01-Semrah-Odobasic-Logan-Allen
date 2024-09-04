PICO_TOOLCHAIN_PATH = /home/semrah/.pico-sdk/toolchain/13_2_Rel1
CPP = $(PICO_TOOLCHAIN_PATH)/bin/arm-none-eabi-cpp

.PHONY: clean

main.i: main.c
	$(CPP) main.c > main.i

hello.txt:
	echo "hello world!" > hello.txt

clean:
	rm -f main.i hello.txt
