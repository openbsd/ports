#Makefile generated on marvin Fri Aug 30 09:18:37 CEST 2002
# Mixmaster version 3  --  (C) 1999 Anonymizer Inc.

# Mixmaster may be redistributed and modified under certain conditions.
# This software is distributed on an "AS IS" basis, WITHOUT WARRANTY OF
# ANY KIND, either express or implied. See the file COPYRIGHT for
# details.

# $Id: Makefile,v 1.1 2002/09/14 15:21:14 naddy Exp $

# Edit according to the libraries you want to use:
INC =  -Ipcre-2.08
DEF =  -DUSE_ZLIB -DUSE_PCRE -DUSE_NCURSES -DHAVE_NCURSES_H -DUSE_SOCK -DSPOOL='"$(SYSCONFDIR)"' -DCOMPILEDPASS='"$(PASS)"'
LIBS =   pcre-2.08/libpcre.a  
LDFLAGS =  -lz  -lcrypto -lcurses

OPT = -Wall
# OPT = -g -pg -Wall -DDEBUG
# OPT = -O2 -Wall

CFLAGS += $(INC) $(DEF) $(OPT)
#CC ?= gcc
AR = ar rc
RANLIB = ranlib
#MAKE = make

OBJ = mix.o rem.o rem1.o rem2.o rem3.o chain.o chain1.o chain2.o chain3.o nym.o pgp.o pgpdb.o pgpdata.o pgpget.o pgpcreat.o pool.o mail.o rfc822.o mime.o keymgt.o compress.o stats.o crypto.o random.o util.o buffers.o

MIXOBJ = rndseed.o menu.o menusend.o menunym.o menuutil.o
NOMENUOBJ = rndseed.o dummy.o
WINOBJ = winmain.o winutil.o

all:	mix

mix:	$(OBJ) $(MIXOBJ) main.o $(LIBS)
	$(CC) $(OBJ) $(MIXOBJ) main.o $(LIBS) $(LDFLAGS) -o mix

libmix.a: $(OBJ) $(MIXOBJ) dllmain.o
	$(AR) libmix.a $(OBJ) $(MIXOBJ) dllmain.o

libmix32.a: libmix.a mixlib.def
	dllwrap --dllname mixlib.dll --def mixlib.def --output-lib libmix32.a libmix.a zlib-1.1.4/libz.a pcre-2.08/libpcre.a openssl/libeay32.a -lwsock32

dllmix: main.o libmix32.a
	$(CC) main.o libmix32.a -o dllmix

winmix.exe:	$(WINOBJ) libmix32.a
	$(CC) $(WINOBJ) libmix32.a -lgdi32 -luser32 $(LDFLAGS) -o mix.exe

winmix: winmenu.res #winmix.exe
	rsrc winmenu.res mix.exe

winmenu.o:	winmenu.rc winmenu.h
	windres winmenu.rc winmenu.o

remailer:	$(OBJ) $(NOMENUOBJ) remailer.o $(LIBS)
	$(CC) $(OBJ) $(NOMENUOBJ) remailer.o $(LIBS) $(LDFLAGS) -o remailer

mpgp:	$(OBJ) $(NOMENUOBJ) pgptest.o $(LIBS)
	$(CC) $(OBJ) $(NOMENUOBJ) pgptest.o $(LIBS) $(LDFLAGS) -o mpgp

test:	$(OBJ) test.o $(NOMENUOBJ) $(LIBS)
	$(CC) $(OBJ) test.o $(NOMENUOBJ) $(LIBS) $(LDFLAGS) -o test

clean:
	-rm -f *.o *.a *.res *~ mix *.exe remailer test mpgp core gmon.out

allclean: clean
	-rm -f Makefile

ci: clean
	cd ~/mix3; ci -l * Mix/* Mix/Src/*; echo

include Makefile.deps

pcre-2.08/libpcre.a:
	cd pcre-2.08; make libpcre.a



