# $OpenBSD: Makefile,v 1.23 2013/04/07 07:09:54 matthieu Exp $

COMMENT=	tool for measuring maximum TCP and UDP bandwidth

DISTNAME=	iperf-2.0.5
REVISION=	3
CATEGORIES=	net

HOMEPAGE=	http://sourceforge.net/projects/iperf/

MAINTAINER=	Lawrence Teo <lteo@devio.us>

# MIT'ish
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=iperf/}

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.65

# Separate build breaks configure test for IPv6 support
SEPARATE_BUILD=	No

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/iperf ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/iperf.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/iperf
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/iperf
	${INSTALL_DATA} ${WRKSRC}/doc/*.gif ${PREFIX}/share/doc/iperf

.include <bsd.port.mk>
