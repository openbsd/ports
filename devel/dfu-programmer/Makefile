# $OpenBSD: Makefile,v 1.5 2018/03/05 14:39:53 sthen Exp $

COMMENT =		Device Firmware Update-based programmer for Atmel chips
DISTNAME =		dfu-programmer-0.7.2
CATEGORIES =		devel
HOMEPAGE =		http://dfu-programmer.github.io/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c usb-1.0

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=dfu-programmer/}

LIB_DEPENDS =		devel/libusb1

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV+=		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${CFLAGS} -L${LOCALBASE}/lib"

.include <bsd.port.mk>
