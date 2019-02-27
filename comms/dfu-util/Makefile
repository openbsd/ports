# $OpenBSD: Makefile,v 1.14 2019/02/27 15:33:13 naddy Exp $

COMMENT =		device firmware update (DFU) USB programmer

DISTNAME =		dfu-util-0.9

CATEGORIES =		comms

HOMEPAGE =		http://dfu-util.sourceforge.net

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/releases/

LIB_DEPENDS =		devel/libusb1
WANTLIB =		c usb-1.0

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
