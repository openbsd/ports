COMMENT =		Rust reimplementation of lualatex

DIST_TUPLE =		gitlab severin-lemaignan retex  1.3.0 .
REVISION =		0

DIST_SUBDIR =		rerolled# remove at update
MODCARGO_DIST_SUBDIR =	../crates# remove at update

CATEGORIES =		print

# CC0
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		print/texlive/texmf,-main

WANTLIB =		$(MODCARGO_WANTLIB) m

MODULES =		devel/cargo
CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

NO_TEST =

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/retex ${PREFIX}/bin/

.include "crates.inc"
.include <bsd.port.mk>
