# $OpenBSD: Makefile,v 1.1.1.1 2001/04/16 21:33:10 jakob Exp $

COMMENT=	a tool for measuring maximum TCP and UDP bandwidth

DISTNAME=	iperf-1.1.1
CATEGORIES=    	net
NEED_VERSION=	1.363

HOMEPAGE=	http://dast.nlanr.net/Projects/Iperf/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

MASTER_SITES=		http://dast.nlanr.net/Projects/Iperf/

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/iperf ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/iperf
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/iperf

.include <bsd.port.mk>
