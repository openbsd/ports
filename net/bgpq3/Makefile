# $OpenBSD: Makefile,v 1.10 2020/01/07 11:38:49 sthen Exp $

COMMENT =		generate access/prefix lists for BGP config

GH_ACCOUNT =		snar
GH_PROJECT =		bgpq3
GH_TAGNAME =		v0.1.35

REVISION =		2

CATEGORIES =		net

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c

CONFIGURE_STYLE =	gnu
NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bgpq3 ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bgpq3.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
