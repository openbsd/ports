# $OpenBSD: Makefile,v 1.22 2013/03/11 11:35:47 espie Exp $

COMMENT=	tool for measuring maximum TCP and UDP bandwidth

DISTNAME=	iperf-2.0.5
REVISION=	2
CATEGORIES=	net

HOMEPAGE=	http://sourceforge.net/projects/iperf/

MAINTAINER=	Lawrence Teo <lteo@devio.us>

# MIT'ish
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=iperf/}

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.65
SEPARATE_BUILD=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/iperf ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/iperf.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/iperf
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/iperf
	${INSTALL_DATA} ${WRKSRC}/doc/*.gif ${PREFIX}/share/doc/iperf

.include <bsd.port.mk>
