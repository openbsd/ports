# $OpenBSD: Makefile,v 1.8 2011/03/02 06:31:35 jasper Exp $

COMMENT =		device firmware update (DFU) USB programmer

DISTNAME =		dfu-util-0.3

CATEGORIES =		comms

HOMEPAGE =		http://dfu-util.gnumonks.org/

MAINTAINER =		Ian Darwin <ian@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}/releases/

LIB_DEPENDS =		devel/libusb
WANTLIB =		c usb

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-silent-rules

NO_REGRESS =		Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/dfu-util.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
