# $OpenBSD: Makefile,v 1.9 2004/10/16 10:42:31 sturm Exp $

COMMENT=	"tool for measuring maximum TCP and UDP bandwidth"

DISTNAME=	iperf-1.7.0
CATEGORIES=    	net

HOMEPAGE=	http://dast.nlanr.net/Projects/Iperf/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no fee license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee license"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://dast.nlanr.net/Projects/Iperf/
EXTRACT_SUFX=	-source.tar.gz

CONFIGURE_STYLE=gnu
WRKCONF=	${WRKSRC}/cfg
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/cfg

MAKE_ENV=	CC="${CC}" CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/iperf ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/iperf
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/iperf

.include <bsd.port.mk>
