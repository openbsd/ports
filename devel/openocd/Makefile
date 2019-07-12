# $OpenBSD: Makefile,v 1.16 2019/07/12 20:44:43 sthen Exp $

COMMENT =	Open On-Chip Debugging

DISTNAME =	openocd-0.10.0
REVISION =	1
CATEGORIES =	devel

HOMEPAGE =	http://openocd.sourceforge.net/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c ftdi hidapi-libusb iconv jim m pthread usb usb-1.0

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=openocd/}
EXTRACT_SUFX =	.tar.bz2

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --disable-werror \
		--disable-wextra \
		--enable-armjtagew \
		--enable-at91rm9200 \
		--enable-ep93xx \
		--enable-ftdi \
		--enable-jlink \
		--enable-presto_libftdi \
		--enable-rlink \
		--enable-usbprog \
		--enable-vsllink \
		--enable-ulink \
		--enable-stlink \
		--enable-ti-icdi \
		--enable-usb-blaster-2 \
		--enable-usb-blaster \
		--enable-osbdm \
		--enable-opendous \
		--enable-openjtag \
		--enable-cmsis-dap \
		--enable-presto \
		--enable-aice \
		--enable-buspirate \
		--disable-internal-jimtcl

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/jim" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"

# don't pick up libftdi1 over libftdi
CONFIGURE_ENV += LIBFTDI_CFLAGS="`pkg-config --cflags libftdi`" \
		LIBFTDI_LIBS="`pkg-config --libs libftdi`"

LIB_DEPENDS =	comms/libhidapi \
		devel/libftdi>=0.20 \
		lang/jimtcl>=0.75

USE_GMAKE =	Yes
# Fails to link main.o and libopenocd.a properly resulting in undefined reference in the gdb_server.o
USE_LIBTOOL =	gnu

.include <bsd.port.mk>
