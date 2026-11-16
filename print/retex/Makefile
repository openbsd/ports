COMMENT =		Rust reimplementation of lualatex

V =			1.9.2
DIST_TUPLE =		gitlab severin-lemaignan retex  ${V} .
DISTNAME =		retex-${V}

CATEGORIES =		print

# CC0
PERMIT_PACKAGE =	Yes

WANTLIB =		$(MODCARGO_WANTLIB) m

MODULES =		devel/cargo
CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

NO_TEST =

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/retex ${PREFIX}/bin/
	${INSTALL_DATA} ${WRKDIST}/crates/retex-cli/retex.1 ${PREFIX}/man/man1

.include "crates.inc"
.include <bsd.port.mk>
