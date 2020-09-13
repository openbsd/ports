# $OpenBSD: Makefile,v 1.6 2020/09/13 13:25:30 ajacoutot Exp $

COMMENT =		sigrok hardware driver library

SIGROK_PROJECT =	libsigrok
SIGROK_VERSION =	0.5.1
MODPY_EGG_VERSION =	${SIGROK_VERSION}
REVISION =		3

SHARED_LIBS +=  sigrok                    0.1 # 0.0
SHARED_LIBS +=  sigrokcxx                 0.1 # 4.0

WANTLIB += ${COMPILER_LIBCXX} ftdi1 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 iconv intl m serialport sigc-2.0 usb-1.0
WANTLIB += zip

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		lang/python

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		devel/check \
			devel/doxygen \
			devel/py-gobject3${MODPY_FLAVOR} \
			devel/swig \
			math/py-numpy${MODPY_FLAVOR}

LIB_DEPENDS =		archivers/libzip \
			comms/sigrok/libserialport \
			devel/glib2mm \
			devel/libftdi1 \
			devel/libusb1

RUN_DEPENDS =		misc/shared-mime-info \
			x11/gtk+3,-guic

TEST_DEPENDS =		devel/check

# /usr/bin/../lib/crt0.o: In function `_start':
# (.text+0x52): undefined reference to `main'
USE_LIBTOOL =	gnu

.include <bsd.port.mk>
