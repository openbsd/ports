# $OpenBSD: Makefile,v 1.4 2014/01/09 12:06:18 stsp Exp $

COMMENT =		Device Firmware Update-based programmer for Atmel chips
V =			0.6.2
DISTNAME =		dfu-programmer-${V}
CATEGORIES =		devel
HOMEPAGE =		http://dfu-programmer.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread usb-1.0
LIB_DEPENDS =		devel/libusb1
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=dfu-programmer/}
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION = 	2.68
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${CFLAGS} -L${LOCALBASE}/lib"

.include <bsd.port.mk>
