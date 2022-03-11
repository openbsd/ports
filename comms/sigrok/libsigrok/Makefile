COMMENT =		sigrok hardware driver library

SIGROK_PROJECT =	libsigrok
SIGROK_VERSION =	0.5.2
MODPY_EGG_VERSION =	${SIGROK_VERSION}
REVISION =		2

SHARED_LIBS +=  sigrok                    0.1 # 0.0
SHARED_LIBS +=  sigrokcxx                 0.1 # 4.0

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += ftdi1 glib-2.0 glibmm-2.4 gio-2.0 hidapi-libusb
WANTLIB += gobject-2.0 iconv intl m serialport sigc-2.0 usb-1.0
WANTLIB += zip

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		lang/python

BUILD_DEPENDS =		devel/check \
			devel/doxygen \
			devel/py-gobject3${MODPY_FLAVOR} \
			devel/swig \
			math/py-numpy${MODPY_FLAVOR}

LIB_DEPENDS =		archivers/libzip \
			comms/libhidapi \
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

CONFIGURE_ARGS =	--disable-ruby

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
