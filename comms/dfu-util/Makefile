# $OpenBSD: Makefile,v 1.12 2014/10/21 15:08:51 abieber Exp $

COMMENT =		device firmware update (DFU) USB programmer

DISTNAME =		dfu-util-0.8

CATEGORIES =		comms

HOMEPAGE =		http://dfu-util.gnumonks.org/

MAINTAINER =		Ian Darwin <ian@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/releases/

LIB_DEPENDS =		devel/libusb-compat
WANTLIB =		c usb pthread

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/dfu-util.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
