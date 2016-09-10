# $OpenBSD: Makefile,v 1.3 2016/09/10 13:03:42 ajacoutot Exp $

PORTROACH =		skipv:initial

COMMENT = bgp filtering automation for Cisco and Juniper routers

VERSION =		0.1.32-rc6
DISTNAME =		bgpq3-${VERSION}
PKGNAME =		${DISTNAME:S/-rc/rc/}
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		https://github.com/snar/bgpq3

# XXX - use this until 0.1.32-rc6 is really released
GH_COMMIT =		2df0a548116c146d8a2b22295eef9484302ba504
#GH_TAGNAME =		${VERSION}
GH_ACCOUNT =		snar
GH_PROJECT =		bgpq3

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

CONFIGURE_STYLE =	gnu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bgpq3 ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bgpq3.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
