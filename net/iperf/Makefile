# $OpenBSD: Makefile,v 1.3 2001/09/09 17:56:59 naddy Exp $

COMMENT=	"tool for measuring maximum TCP and UDP bandwidth"

DISTNAME=	iperf-1.1.1
CATEGORIES=    	net
NEED_VERSION=	1.363

HOMEPAGE=	http://dast.nlanr.net/Projects/Iperf/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no fee license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee license"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://dast.nlanr.net/Projects/Iperf/

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/iperf ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/iperf
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/iperf

.include <bsd.port.mk>
