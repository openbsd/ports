# $OpenBSD: Makefile,v 1.19 2021/11/01 16:43:20 sthen Exp $

BROKEN-sparc64 =	ring-0.6.20 does not build on sparc64

COMMENT =		RPKI "relying party" software

GH_ACCOUNT =		NLnetLabs
GH_PROJECT =		routinator
GH_TAGNAME =		v0.10.1

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
