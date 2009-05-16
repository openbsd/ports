# $OpenBSD: Makefile,v 1.15 2009/05/16 21:48:20 rui Exp $

COMMENT=	tool for measuring maximum TCP and UDP bandwidth

VERSION=	2.0.4
DISTNAME=	iperf-${VERSION}
CATEGORIES=    	net

HOMEPAGE=	http://dast.nlanr.net/Projects/Iperf/

MAINTAINER=	Rui Reis <rui@openbsd.org>

PERMIT_PACKAGE_CDROM=	no fee license
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	no fee license
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=iperf/}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-threads

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/iperf ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/iperf.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/iperf
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/iperf
	${INSTALL_DATA} ${WRKSRC}/doc/*.gif ${PREFIX}/share/doc/iperf

NO_REGRESS=	Yes

.include <bsd.port.mk>
