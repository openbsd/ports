# $OpenBSD: Makefile,v 1.3 2013/03/11 10:50:03 espie Exp $

COMMENT =		Device Firmware Update-based programmer for Atmel chips

V =			0.5.4
DISTNAME =		dfu-programmer-${V}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		http://dfu-programmer.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread usb-1.0

LIB_DEPENDS =		devel/libusb1

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=dfu-programmer/}

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${CFLAGS} -L${LOCALBASE}/lib"

.include <bsd.port.mk>
