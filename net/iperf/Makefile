# $OpenBSD: Makefile,v 1.30 2019/07/12 20:48:28 sthen Exp $

COMMENT=	tool for measuring maximum TCP and UDP bandwidth

DISTNAME=	iperf-2.0.12
CATEGORIES=	net
REVISION=	0

HOMEPAGE=	http://sourceforge.net/projects/iperf/

MAINTAINER=	Lawrence Teo <lteo@openbsd.org>

# MIT'ish
PERMIT_PACKAGE=	Yes

WANTLIB=	c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

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
