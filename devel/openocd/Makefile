# $OpenBSD: Makefile,v 1.11 2014/09/16 15:42:36 stu Exp $

COMMENT =	Open On-Chip Debugging

DISTNAME =	openocd-0.6.1
REVISION =	1
CATEGORIES =	devel

SHARED_LIBS +=  openocd		1.0 # unknown

HOMEPAGE =	http://openocd.sourceforge.net/

MAINTAINER =	Sylvestre Gallon <ccna.syl@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c ftdi jim m pthread usb usb-1.0

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=openocd/}
EXTRACT_SUFX =	.tar.bz2

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --disable-werror \
		--disable-wextra \
		--enable-arm-jtag-ew \
		--enable-at91rm9200 \
		--enable-ep93xx \
		--enable-ft2232_libftdi \
		--enable-jlink \
		--enable-presto_libftdi \
		--enable-rlink \
		--enable-usbprog \
		--enable-vsllink \
		--enable-ulink \
		--enable-buspirate \
		--disable-internal-jimtcl

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/jim" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"

LIB_DEPENDS =	devel/libftdi>=0.20 \
		lang/jimtcl>=0.75

USE_GMAKE =	Yes
NO_TEST =	Yes

.include <bsd.port.mk>
