# $OpenBSD: Makefile,v 1.4 2020/03/15 15:59:21 sthen Exp $

COMMENT =	generate access/prefix lists for BGP config (fork of bgpq3)

GH_ACCOUNT =		bgp
GH_PROJECT =		bgpq4
GH_TAGNAME =		0.0.6

CATEGORIES =		net

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# C11
COMPILER =		base-clang ports-gcc

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bgpq4 ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bgpq4.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
