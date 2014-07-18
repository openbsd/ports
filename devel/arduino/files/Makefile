# $OpenBSD: Makefile,v 1.1 2014/07/18 11:12:13 edd Exp $
# Arduino Makefile
# Arduino adaptation by mellis, eighthave, oli.keller
#
# Adapted for BSD make(1) by Seth Wright (seth@crosse.org)
# Adapted for OpenBSD ports by Chris Kuethe (ckuethe@openbsd.org)
#
# This makefile allows you to build sketches from the command line
# without the Arduino environment (or Java).
#
# Detailed instructions for using the makefile:
#
#  1. Copy this file into the folder with your sketch. There should be a
#     file with the same name as the folder and with the extension .ino
#     (e.g. foo.ino in the foo/ folder).
#
#  2. Modify the line containing "PORT" to refer to the filename
#     representing the USB or serial connection to your Arduino board
#     (e.g. PORT = /dev/tty.USB0).  If the exact name of this file
#     changes, you can use * as a wildcard (e.g. PORT = /dev/tty.usb*).
#
#  3. Set the line containing "MCU" to match your board's processor.
#     Older one's are atmega8 based, newer ones like Arduino Mini, Bluetooth
#     or Diecimila have the atmega168.  If you're using a LilyPad Arduino,
#     change F_CPU to 8000000.
#
#  4. At the command line, change to the directory containing your
#     program's file and the makefile.
#
#  5. Type "make" and press enter to compile/verify your program.
#
#  6. Type "make upload", reset your Arduino board, and press enter to
#     upload your program to the Arduino board.
#
# $Id: Makefile,v 1.1 2014/07/18 11:12:13 edd Exp $

TARGET = ${.CURDIR:C/.*\///g}

## you might use this for newer boards like the UNO
UPLOAD_RATE = 115200
PORT = /dev/cuaU0
AVRDUDE_PROGRAMMER = arduino

## for an arduino mega
#UPLOAD_RATE = 57600
#MCU = atmega1280
#AVRDUDE_PROGRAMMER = arduino

## or this for an older arduino
#UPLOAD_RATE = 19200
#PORT = /dev/cuaU0
#AVRDUDE_PROGRAMMER = stk500

## or this, if you have a usbtiny ISP
#PORT = usb
#AVRDUDE_PROGRAMMER = usbtiny

MCU = atmega328p
F_CPU = 16000000

# If your sketch uses any libraries, list them here, eg.
# LIBRARIES=EEPROM LiquidCrystal Wire
#
# If you want to use the Ethernet library, use:
# LIBRARIES=SPI Ethernet IPAddress Dhcp Dns EthernetClient EthernetServer \
#		EthernetUdp utility/w5100 utility/socket new
#
# To use the SD library:
# LIBRARIES=SD File utility/SdFile utility/SdVolume utility/Sd2Card
LIBRARIES=

# Arduino variant, one of: "eightanaloginputs", "leonardo", "mega",
# "micro" or "standard".
VARIANT = standard

############################################################################
# Below here nothing should be changed...

ARDUINO = ${TRUEPREFIX}/share/arduino/
.PATH: $(ARDUINO)/cores/arduino ${LIBRARIES:S|^|$(ARDUINO)/libraries/|g}
AVR_TOOLS_PATH = ${TRUEPREFIX}/bin
SRC = wiring.c wiring_analog.c wiring_digital.c \
wiring_pulse.c wiring_shift.c WInterrupts.c
CXXSRC = HardwareSerial.cpp WMath.cpp Print.cpp WString.cpp \
	${LIBRARIES:S|$|.cpp|g}
FORMAT = ihex


# Name of this Makefile (used for "make depend").
MAKEFILE = Makefile

# Debugging format.
# Native formats for AVR-GCC's -g are stabs [default], or dwarf-2.
# AVR (extended) COFF requires stabs, plus an avr-objcopy run.
DEBUG = stabs

OPT = s

# Place -D or -U options here
CDEFS = -DF_CPU=$(F_CPU) -DARDUINO=100
CXXDEFS = -DF_CPU=$(F_CPU) -DARDUINO=100

# Place -I options here
ROOTLIBINCS=${LIBRARIES:S|^|-I$(ARDUINO)/libraries/|g}
UTILITYLIBINCS=${ROOTLIBINCS:S|$|/utility/|g}
LIBINC=${ROOTLIBINCS} ${UTILITYLIBINCS} -I$(ARDUINO)/variants/$(VARIANT)
CINCS = -I$(ARDUINO)/cores/arduino $(LIBINC) -I$(ARDUINO)/variants/$(VARIANT)
CXXINCS = -I$(ARDUINO)/cores/arduino $(LIBINC) -I$(ARDUINO)/variants/$(VARIANT)

# Compiler flag to set the C Standard level.
# c89   - "ANSI" C
# gnu89 - c89 plus GCC extensions
# c99   - ISO C99 standard (not yet fully implemented)
# gnu99 - c99 plus GCC extensions
CSTANDARD = -std=gnu99
CDEBUG = -g$(DEBUG)
CWARN = -Wall -Wstrict-prototypes
CTUNING = -ffunction-sections -fdata-sections
#CTUNING = -funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums
#CEXTRA = -Wa,-adhlns=$(<:.c=.lst)

CFLAGS = $(CDEBUG) $(CDEFS) $(CINCS) -O$(OPT) $(CWARN) \
	 $(CSTANDARD) $(CEXTRA) $(CTUNING)
CXXFLAGS = $(CDEFS) $(CINCS) -O$(OPT)
#ASFLAGS = -Wa,-adhlns=$(<:.S=.lst),-gstabs
LDFLAGS = -lm -Wl,--gc-sections


# Programming support using avrdude. Settings and variables.
AVRDUDE_PORT = $(PORT)
AVRDUDE_WRITE_FLASH = -U flash:w:applet/$(TARGET).hex
AVRDUDE_CONF = /etc/avrdude.conf
AVRDUDE_FLAGS = -V -F -C $(AVRDUDE_CONF) -p $(MCU) -P $(AVRDUDE_PORT) \
-c $(AVRDUDE_PROGRAMMER) -b $(UPLOAD_RATE)

# Program settings
CC = $(AVR_TOOLS_PATH)/avr-gcc
CXX = $(AVR_TOOLS_PATH)/avr-g++
OBJCOPY = $(AVR_TOOLS_PATH)/avr-objcopy
OBJDUMP = $(AVR_TOOLS_PATH)/avr-objdump
AR  = $(AVR_TOOLS_PATH)/avr-ar
SIZE = $(AVR_TOOLS_PATH)/avr-size
NM = $(AVR_TOOLS_PATH)/avr-nm
AVRDUDE = $(AVR_TOOLS_PATH)/avrdude
REMOVE = rm -f
REMOVEDIR = rmdir
MKDIR = mkdir -p
MV = mv -f

# Define all object files.
OBJ = $(SRC:.c=.o) $(CXXSRC:.cpp=.o) $(ASRC:.S=.o)

# Define all listing files.
LST = $(ASRC:.S=.lst) $(CXXSRC:.cpp=.lst) $(SRC:.c=.lst)

# Combine all necessary flags and optional flags.
# Add target processor to flags.
ALL_CFLAGS = -mmcu=$(MCU) -I. $(CFLAGS)
ALL_CXXFLAGS = -mmcu=$(MCU) -I. $(CXXFLAGS)
ALL_ASFLAGS = -mmcu=$(MCU) -I. -x assembler-with-cpp $(ASFLAGS)


# Default target.
all: applet_files build sizeafter

build: mkdirs elf hex

mkdirs:
	$(MKDIR) utility

# Here is the "preprocessing".
# It creates a .cpp file based with the same name as the .ino file.
# On top of the new .cpp file comes the Arduino.h header.
# Then comes a stdc++ workaround, see:                                          
# http://stackoverflow.com/questions/920500/what-is-the-purpose-of-cxa-pure-virtual
# At the end there is a generic main() function attached.
# Then the .cpp file will be compiled. Errors during compile will
# refer to this new, automatically generated, file.
# Not the original .ino file you actually edit...
applet_files: $(TARGET).ino
	test -d applet || mkdir applet
	echo '#include "Arduino.h"' > applet/$(TARGET).cpp
	echo '#ifdef __cplusplus' >> applet/$(TARGET).cpp
	echo 'extern "C" void __cxa_pure_virtual(void) { while(1); }' \
		>> applet/$(TARGET).cpp
	echo '#endif\n' >> applet/$(TARGET).cpp
	cat $(TARGET).ino >> applet/$(TARGET).cpp
	cat $(ARDUINO)/cores/arduino/main.cpp >> applet/$(TARGET).cpp

elf: applet/$(TARGET).elf
hex: applet/$(TARGET).hex
eep: applet/$(TARGET).eep
lss: applet/$(TARGET).lss
sym: applet/$(TARGET).sym

# Program the device.
upload: applet/$(TARGET).hex
	$(AVRDUDE) $(AVRDUDE_FLAGS) $(AVRDUDE_WRITE_FLASH)


# Display size of file.
HEXSIZE = $(SIZE) --target=$(FORMAT) applet/$(TARGET).hex
ELFSIZE = $(SIZE)  applet/$(TARGET).elf
sizebefore:
	@if [ -f applet/$(TARGET).elf ]; then echo; echo $(MSG_SIZE_BEFORE); $(HEXSIZE); echo; fi

sizeafter: applet/$(TARGET).hex
	@if [ -f applet/$(TARGET).elf ]; then echo; echo $(MSG_SIZE_AFTER); $(HEXSIZE); echo; fi


# Convert ELF to COFF for use in debugging / simulating in AVR Studio or VMLAB.
COFFCONVERT=$(OBJCOPY) --debugging \
--change-section-address .data-0x800000 \
--change-section-address .bss-0x800000 \
--change-section-address .noinit-0x800000 \
--change-section-address .eeprom-0x810000


coff: applet/$(TARGET).elf
	$(COFFCONVERT) -O coff-avr applet/$(TARGET).elf $(TARGET).cof


extcoff: $(TARGET).elf
	$(COFFCONVERT) -O coff-ext-avr applet/$(TARGET).elf $(TARGET).cof


.SUFFIXES: .elf .hex .eep .lss .sym .cpp .o .c .s .S

.elf.hex:
	$(OBJCOPY) -O $(FORMAT) -R .eeprom $< $@

.elf.eep:
	-$(OBJCOPY) -j .eeprom --set-section-flags=.eeprom="alloc,load" \
	--change-section-lma .eeprom=0 -O $(FORMAT) $< $@

# Create extended listing file from ELF output file.
.elf.lss:
	$(OBJDUMP) -h -S $< > $@

# Create a symbol table from ELF output file.
.elf.sym:
	$(NM) -n $< > $@

# Link: create ELF output file from library.
applet/$(TARGET).elf: $(TARGET).ino applet/core.a
	$(CXX) $(ALL_CXXFLAGS) -o $@ applet/$(TARGET).cpp -L. applet/core.a $(LDFLAGS)

applet/core.a: $(OBJ)
	@for i in $(OBJ); do echo $(AR) rcs applet/core.a $$i; $(AR) rcs applet/core.a $$i; done


# Compile: create object files from C++ source files.
.cpp.o:
	$(CXX) -c $(ALL_CXXFLAGS) $< -o $@

# Compile: create object files from C source files.
.c.o:
	$(CC) -c $(ALL_CFLAGS) $< -o $@


# Compile: create assembler files from C source files.
.c.s:
	$(CC) -S $(ALL_CFLAGS) $< -o $@


# Assemble: create object files from assembler source files.
.S.o:
	$(CC) -c $(ALL_ASFLAGS) $< -o $@


# Automatic dependencies
%.d: %.c
	$(CC) -M $(ALL_CFLAGS) $< | sed "s;$(notdir $*).o:;$*.o $*.d:;" > $@

%.d: %.cpp
	$(CXX) -M $(ALL_CXXFLAGS) $< | sed "s;$(notdir $*).o:;$*.o $*.d:;" > $@


# Target: clean project.
clean:
	$(REMOVE) applet/$(TARGET).hex applet/$(TARGET).eep applet/$(TARGET).cof applet/$(TARGET).elf \
	applet/$(TARGET).map applet/$(TARGET).sym applet/$(TARGET).lss applet/core.a \
	$(OBJ) $(LST) $(SRC:.c=.s) $(SRC:.c=.d) $(CXXSRC:.cpp=.s) $(CXXSRC:.cpp=.d) utility/*
	if [ -d utility ]; then $(REMOVEDIR) utility; fi

.PHONY:	all build elf hex eep lss sym program coff extcoff clean applet_files sizebefore sizeafter

