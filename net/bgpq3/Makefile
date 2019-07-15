# $OpenBSD: Makefile,v 1.8 2019/07/15 11:05:09 job Exp $

COMMENT =		bgp filtering automation for Cisco and Juniper routers

GH_ACCOUNT =		snar
GH_PROJECT =		bgpq3
GH_TAGNAME =		v0.1.35

REVISION =		0

CATEGORIES =		net

HOMEPAGE =		https://github.com/snar/bgpq3

# BSD
PERMIT_PACKAGE =	Yes
WANTLIB += c

CONFIGURE_STYLE =	gnu
NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bgpq3 ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bgpq3.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
