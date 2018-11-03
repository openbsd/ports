# $OpenBSD: Makefile,v 1.2 2018/11/03 06:31:15 bentley Exp $

COMMENT =		sigrok hardware driver library

SIGROK_PROJECT =	libsigrok
SIGROK_VERSION =	0.5.1

SHARED_LIBS +=  sigrok                    0.1 # 0.0
SHARED_LIBS +=  sigrokcxx                 0.1 # 4.0

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += c ffi ftdi1 glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += iconv intl m pcre serialport sigc-2.0 usb-1.0 zip

# C++11
COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/doxygen
LIB_DEPENDS =		archivers/libzip \
			comms/sigrok/libserialport \
			devel/glib2mm \
			devel/libftdi1 \
			devel/libusb1
RUN_DEPENDS =		misc/shared-mime-info \
			x11/gtk+3,-guic

# /usr/bin/../lib/crt0.o: In function `_start':
# (.text+0x52): undefined reference to `main'
USE_LIBTOOL =	gnu

.include <bsd.port.mk>
