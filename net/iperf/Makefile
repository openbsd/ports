# $OpenBSD: Makefile,v 1.28 2018/09/09 10:27:29 bluhm Exp $

COMMENT=	tool for measuring maximum TCP and UDP bandwidth

DISTNAME=	iperf-2.0.12
CATEGORIES=	net

HOMEPAGE=	http://sourceforge.net/projects/iperf/

MAINTAINER=	Lawrence Teo <lteo@openbsd.org>

# MIT'ish
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread ${COMPILER_LIBCXX}

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=iperf2/}

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69

# Separate build breaks configure test for IPv6 support
SEPARATE_BUILD=	No

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/iperf ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/iperf.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/iperf
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/iperf
	${INSTALL_DATA} ${WRKSRC}/doc/*.gif ${PREFIX}/share/doc/iperf

.include <bsd.port.mk>
