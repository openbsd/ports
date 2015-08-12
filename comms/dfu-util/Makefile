# $OpenBSD: Makefile,v 1.13 2015/08/12 22:27:31 sthen Exp $

COMMENT =		device firmware update (DFU) USB programmer

DISTNAME =		dfu-util-0.8
REVISION =		0

CATEGORIES =		comms

HOMEPAGE =		http://dfu-util.gnumonks.org/

MAINTAINER =		Ian Darwin <ian@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/releases/

LIB_DEPENDS =		devel/libusb1
WANTLIB =		c usb-1.0 pthread

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/dfu-util.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
