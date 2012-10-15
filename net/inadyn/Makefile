# $OpenBSD: Makefile,v 1.2 2012/10/15 15:18:32 sthen Exp $

COMMENT =		small memory footprint dynamic dns updater

DISTNAME =		inadyn-1.98.0

CATEGORIES =		net

HOMEPAGE =		http://vmlinux.org/jocke/inadyn.shtml

MAINTAINER =		Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c

MASTER_SITES =		ftp://ftp.vmlinux.org/pub/People/jocke/inadyn/
EXTRACT_SUFX =		.tar.bz2

USE_GMAKE = 		Yes
NO_REGRESS = 		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/inadyn/
	${INSTALL_DATA} ${FILESDIR}/inadyn.conf ${PREFIX}/share/examples/inadyn/

.include <bsd.port.mk>
