# $OpenBSD: Makefile,v 1.15 2021/02/21 09:19:07 semarie Exp $

BROKEN-sparc64 =	ring-0.6.19 does not build on sparc64

COMMENT =		RPKI "relying party" software

GH_ACCOUNT =		NLnetLabs
GH_PROJECT =		routinator
GH_TAGNAME =		v0.8.3
REVISION =		0

CATEGORIES =		net

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi m pthread

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

RUN_DEPENDS =		net/rsync
SEPARATE_BUILD =	Yes

FIX_EXTRACT_PERMISSIONS = Yes
DISTFILES +=		${DISTNAME}{${GH_TAGNAME}}${EXTRACT_SUFX}

.include "crates.inc"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/routinator
	${INSTALL_DATA} ${WRKSRC}/doc/routinator.1 ${PREFIX}/man/man1/
	${SUBST_DATA} ${WRKSRC}/etc/routinator.conf.system-service \
	    ${PREFIX}/share/examples/routinator/routinator.conf.system-service
	${INSTALL_DATA} ${WRKSRC}/etc/routinator.conf.example \
	    ${PREFIX}/share/examples/routinator/routinator.conf.example
	rm -rf ${PREFIX}/share/routinator/tals

.include <bsd.port.mk>
