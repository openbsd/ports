# $OpenBSD: Makefile,v 1.5 2002/10/04 19:20:24 naddy Exp $

COMMENT=	"tool for measuring maximum TCP and UDP bandwidth"

DISTNAME=	iperf-1.2
CATEGORIES=    	net

HOMEPAGE=	http://dast.nlanr.net/Projects/Iperf/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no fee license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee license"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://dast.nlanr.net/Projects/Iperf/

MAKE_ENV=	CC="${CC}" CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/iperf ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/iperf
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/iperf

.include <bsd.port.mk>
