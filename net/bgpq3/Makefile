# $OpenBSD: Makefile,v 1.6 2018/10/04 13:08:41 phessler Exp $

PORTROACH =		skipv:initial

COMMENT =		bgp filtering automation for Cisco and Juniper routers

VERSION =		0.1.33.20181004
DISTNAME =		bgpq3-${VERSION}
GH_PROJECT =		bgpq3
GH_ACCOUNT =		snar
GH_COMMIT =		1fe9a678d52b4e970e670880a2d0f3760629382b

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
