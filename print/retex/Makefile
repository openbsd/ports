COMMENT =		Rust reimplementation of lualatex

V =			1.2.0
REV =			35b87f3cb5f18a1a5c07447560d4a02cc501a83e
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
