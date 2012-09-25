# $OpenBSD: Makefile,v 1.20 2012/09/25 20:54:39 brad Exp $

COMMENT=	tool for measuring maximum TCP and UDP bandwidth

DISTNAME=	iperf-2.0.5
REVISION=	1
CATEGORIES=    	net

HOMEPAGE=	http://sourceforge.net/projects/iperf/

MAINTAINER=	Lawrence Teo <lteo@devio.us>

# MIT'ish
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m pthread stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=iperf/}

CONFIGURE_STYLE=gnu

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/iperf ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/iperf.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/iperf
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/iperf
	${INSTALL_DATA} ${WRKSRC}/doc/*.gif ${PREFIX}/share/doc/iperf

.include <bsd.port.mk>
