# $OpenBSD: Makefile,v 1.1 2022/01/31 08:34:58 op Exp $

PREFIX ?=	/usr/local
LIBDIR ?=	"$(PREFIX)/lib"
INCLUDEDIR ?=	"$(PREFIX)/include"

PKG_CONFIG ?=	pkg-config

LIBTARGET =	libusockets.so.$(LIBusockets_VERSION)

REQUIRES =	libcrypto libssl libuv
COMMON_FLAGS =	-Isrc -DLIBUS_USE_OPENSSL -DLIBUS_USE_LIBUV `$(PKG_CONFIG) --cflags $(REQUIRES)`

CFLAGS +=	-std=c11 -fPIC $(COMMON_FLAGS)
CXXFLAGS +=	-std=c++17 -fPIC $(COMMON_FLAGS)
LDFLAGS +=	`$(PKG_CONFIG) --libs $(REQUIRES)`

all:
	$(CC) $(CFLAGS) -c src/*.c src/eventing/*.c src/crypto/*.c
	$(CXX) $(CXXFLAGS) -c src/crypto/*.cpp
	$(AR) rcvs libusockets.a *.o
	$(CXX) $(CXXFLAGS) -shared -o $(LIBTARGET) *.o -Wl,-soname,$(LIBTARGET) $(LDFLAGS)
	sed -e "s:@PREFIX@:$(PREFIX):" -e "s:@VERSION@:$(LIBusockets_VERSION):" libusockets.pc.in > libusockets.pc

install:
	install -d "$(LIBDIR)/pkgconfig" "$(INCLUDEDIR)"
	install -m 644 src/libusockets.h "$(INCLUDEDIR)/"
	install -m 644 $(LIBTARGET) "$(LIBDIR)/"
	install -m 644 libusockets.a "$(LIBDIR)/"
	install -m 644 libusockets.pc "$(LIBDIR)/pkgconfig/"

test:
	rm -f localhost.pem localhost.crt
	openssl req -x509 -out localhost.crt -keyout localhost.pem -newkey rsa:2048 -nodes -sha256 -subj '/CN=localhost' -extensions EXT -config localhost.conf
	$(CC) $(CXXFLAGS) libusockets.a examples/hammer_test.c -o hammer_test $(LDFLAGS)
	./hammer_test

.PHONY: all install test
