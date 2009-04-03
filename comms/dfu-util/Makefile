# $OpenBSD: Makefile,v 1.3 2009/04/03 19:17:06 fgsch Exp $

COMMENT =		device firmware update (DFU) USB programmer

DISTNAME =		dfu-util-svn-4900
PKGNAME =		dfu-util-0.1p0

CATEGORIES =		comms

HOMEPAGE =		http://wiki.openmoko.org/wiki/Dfu-util

MAINTAINER =		Ian Darwin <ian@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c

MASTER_SITES =		http://files.lodoss.net/

LIB_DEPENDS =		usb::devel/libusb

CONFIGURE_STYLE =	gnu

NO_REGRESS =		Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/dfu-util.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
