# $OpenBSD: Makefile,v 1.4 2016/10/14 13:14:45 phessler Exp $

PORTROACH =		skipv:initial

COMMENT = bgp filtering automation for Cisco and Juniper routers

VERSION =		0.1.32
GH_PROJECT =		bgpq3
GH_ACCOUNT =		snar
GH_TAGNAME =		v${VERSION}

CATEGORIES =		net

HOMEPAGE =		https://github.com/snar/bgpq3

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

CONFIGURE_STYLE =	gnu
NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bgpq3 ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bgpq3.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
