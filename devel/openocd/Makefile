# $OpenBSD: Makefile,v 1.6 2011/11/14 18:30:53 ajacoutot Exp $

COMMENT =	Open On-Chip Debugging

DISTNAME =	openocd-0.5.0
CATEGORIES =	devel
REVISION =	0

SHARED_LIBS +=  openocd		0.0 # .0.0

HOMEPAGE =	http://openocd.berlios.de/

MAINTAINER =	Sylvestre Gallon <ccna.syl@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =  Yes
PERMIT_PACKAGE_FTP = 	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =  Yes

WANTLIB += c ftdi jim m pthread usb usb-1.0

MASTER_SITES =	${MASTER_SITE_BERLIOS:=openocd/}
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

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include " \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"

LIB_DEPENDS =	devel/libftdi \
		lang/jimtcl

USE_GMAKE =	Yes
USE_LIBTOOL =	Yes
NO_REGRESS =	Yes

.include <bsd.port.mk>
