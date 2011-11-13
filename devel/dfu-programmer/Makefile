# $OpenBSD: Makefile,v 1.2 2011/11/13 13:54:04 ajacoutot Exp $

COMMENT =		Device Firmware Update-based programmer for Atmel chips

V =			0.5.4
DISTNAME =		dfu-programmer-${V}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		http://dfu-programmer.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c pthread usb-1.0

LIB_DEPENDS =		devel/libusb1

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=dfu-programmer/}

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${CFLAGS} -L${LOCALBASE}/lib"

.include <bsd.port.mk>
