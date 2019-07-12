# $OpenBSD: Makefile,v 1.15 2019/07/12 20:43:46 sthen Exp $

COMMENT =		device firmware update (DFU) USB programmer

DISTNAME =		dfu-util-0.9

CATEGORIES =		comms

HOMEPAGE =		http://dfu-util.sourceforge.net

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}/releases/

LIB_DEPENDS =		devel/libusb1
WANTLIB =		c usb-1.0

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
