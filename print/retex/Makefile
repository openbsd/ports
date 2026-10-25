COMMENT =		Rust reimplementation of lualatex

V =			1.3.0
REV =			47cc2b2987a2952121dc4ac0d531675717006f5e
DIST_TUPLE =		gitlab severin-lemaignan retex  ${V} .
DISTNAME =		retex-${V}

CATEGORIES =		print

# CC0
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		print/texlive/texmf,-main

WANTLIB =		$(MODCARGO_WANTLIB) m

MODULES =		devel/cargo
CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

WRKDIST =		${WRKDIR}/retex-${V}-${REV}

NO_TEST =

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/retex ${PREFIX}/bin/

.include "crates.inc"
.include <bsd.port.mk>
