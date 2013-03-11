# $OpenBSD: Makefile,v 1.3 2013/03/11 11:35:47 espie Exp $

COMMENT =		small memory footprint dynamic dns updater

DISTNAME =		inadyn-1.98.0

CATEGORIES =		net

HOMEPAGE =		http://vmlinux.org/jocke/inadyn.shtml

MAINTAINER =		Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		ftp://ftp.vmlinux.org/pub/People/jocke/inadyn/
EXTRACT_SUFX =		.tar.bz2

USE_GMAKE = 		Yes
NO_TEST = 		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/inadyn/
	${INSTALL_DATA} ${FILESDIR}/inadyn.conf ${PREFIX}/share/examples/inadyn/

.include <bsd.port.mk>
