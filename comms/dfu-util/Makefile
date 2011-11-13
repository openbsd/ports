# $OpenBSD: Makefile,v 1.10 2011/11/13 13:54:04 ajacoutot Exp $

COMMENT =		device firmware update (DFU) USB programmer

DISTNAME =		dfu-util-0.3
REVISION =		0

CATEGORIES =		comms

HOMEPAGE =		http://dfu-util.gnumonks.org/

MAINTAINER =		Ian Darwin <ian@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}/releases/

LIB_DEPENDS =		devel/libusb-compat
WANTLIB =		c usb pthread

CONFIGURE_STYLE =	gnu

NO_REGRESS =		Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/dfu-util.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
