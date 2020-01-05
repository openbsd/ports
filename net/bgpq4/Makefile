# $OpenBSD: Makefile,v 1.1 2020/01/05 23:49:13 job Exp $

COMMENT =	generate access/prefix lists for BGP config (fork of bgpq3)

GH_ACCOUNT =		bgp
GH_PROJECT =		bgpq4
GH_TAGNAME =		0.0.5

CATEGORIES =		net

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c

DEBUG_PACKAGES =	${BUILD_PACKAGES}

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bgpq4 ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bgpq4.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
