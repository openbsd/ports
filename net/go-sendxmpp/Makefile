COMMENT =		CLI tool to send messages over XMPP

MODGO_MODNAME =		salsa.debian.org/mdosch/go-sendxmpp
MODGO_VERSION =		v0.11.0

DISTNAME =		go-sendxmpp-${MODGO_VERSION}
PKGNAME =		${DISTNAME:S/-v/-/}

CATEGORIES =		net

HOMEPAGE =		https://salsa.debian.org/mdosch/go-sendxmpp

MAINTAINER =		Paco Esteban <paco@openbsd.org>

# BSD-2
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go

post-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/* ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/man/*.1 ${PREFIX}/man/man1/
	${INSTALL_PROGRAM} ${WRKSRC}/man/*.5 ${PREFIX}/man/man5/

.include "modules.inc"

.include <bsd.port.mk>
