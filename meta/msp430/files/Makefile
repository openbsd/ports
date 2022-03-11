# Sample Makefile for developing MSP430 projects on OpenBSD.

MCU=	msp430
MMCU=	msp430g2231 # msp430f5529

CFLAGS  = -mmcu=$(MMCU) -g -Os -Wall -Wunused -I../includes/
ASFLAGS = -mmcu=$(MMCU) -x assembler-with-cpp -Wa,-gstabs
LDFLAGS = -mmcu=$(MMCU) -Wl,-Map=$(TARGET).map
CC	 = $(MCU)-gcc
LD	 = $(MCU)-ld
AR	 = $(MCU)-ar
AS	 = $(MCU)-gcc
GASP	 = $(MCU)-gasp
NM	 = $(MCU)-nm
OBJCOPY  = $(MCU)-objcopy
OBJDUMP  = $(MCU)-objdump
RANLIB   = $(MCU)-ranlib
STRIP	 = $(MCU)-strip
SIZE	 = $(MCU)-size
READELF  = $(MCU)-readelf
MAKETXT  = srec_cat

TARGET= main

SOURCES = main.c
OBJECTS = $(SOURCES:.c=.o)

all: $(TARGET).elf $(TARGET).hex $(TARGET).txt

$(TARGET).elf: $(OBJECTS)
	@echo "Linking $@"
	$(CC) $(OBJECTS) $(LDFLAGS) $(LIBS) -o $@
	@echo
	@echo ">>>> Size of Firmware <<<<"
	$(SIZE) $(TARGET).elf
	@echo

$(TARGET).hex: $(TARGET).elf
	$(OBJCOPY) -O ihex $(TARGET).elf $(TARGET).hex

%.txt: %.hex
	$(MAKETXT) -O $@ -TITXT $< -I

%.o: %.c
	@echo "Compiling $<"
	$(CC) -c $(CFLAGS) -o $@ $<

%.lst: %.c
	$(CC) -c $(CFLAGS) -Wa,-anlhd $< > $@

$(TARGET).txt: $(TARGET).hex
	$(MAKETXT) -O $(TARGET).txt -TITXT $(TARGET).hex -I

program: $(TARGET).elf
	mspdebug rf2500 "prog $(TARGET).elf" exit

clean:
	rm -fr $(TARGET).elf $(TARGET).hex $(OBJECTS)

asm:
	${OBJDUMP} -d ${OBJECTS}
