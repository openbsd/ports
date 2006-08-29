# $OpenBSD: Makefile,v 1.13 2006/08/29 19:50:22 aanriot Exp $

COMMENT=	"tool for measuring maximum TCP and UDP bandwidth"

VERSION=	2.0.2
DISTNAME=	iperf-${VERSION}
PKGNAME=	iperf-${VERSION}p1
CATEGORIES=    	net

HOMEPAGE=	http://dast.nlanr.net/Projects/Iperf/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no fee license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee license"
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m stdc++

MASTER_SITES=	http://dast.nlanr.net/Projects/Iperf2.0/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-threads

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/iperf ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/iperf
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/iperf
	${INSTALL_DATA} ${WRKSRC}/doc/*.gif ${PREFIX}/share/doc/iperf

NO_REGRESS=	Yes

.include <bsd.port.mk>
