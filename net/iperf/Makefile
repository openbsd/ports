# $OpenBSD: Makefile,v 1.7 2003/01/05 03:18:50 lebel Exp $

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

# gcc3
MODULES=		gcc3
MODGCC3_ARCHES=         sparc64
MODGCC3_LANGS+=         c++

MAKE_ENV=	CC="${CC}" CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/iperf ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/iperf
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/iperf

.include <bsd.port.mk>
