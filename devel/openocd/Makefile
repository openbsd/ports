# $OpenBSD: Makefile,v 1.1.1.1 2009/09/17 21:59:46 sturm Exp $

COMMENT =	Open On-Chip Debugging

DISTNAME =	openocd-0.2.0
CATEGORIES =	devel

SHARED_LIBS +=  openocd		0.0 # .0.0

HOMEPAGE =	http://openocd.berlios.de/

MAINTAINER =	Sylvestre Gallon <ccna.syl@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes
WANTLIB =	c usb

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
		--enable-vsllink

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include " \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =	ftdi::devel/libftdi

USE_LIBTOOL =	Yes
NO_REGRESS =	Yes

.include <bsd.port.mk>
