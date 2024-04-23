COMMENT =	markup-based typesetting system

DISTNAME =	typst-${V}
V =		0.11.0

DIST_TUPLE +=	github typst typst v${V} .
DIST_TUPLE +=	github typst typst-dev-assets v${V} crates/typst-dev-assets

CATEGORIES =	textproc

HOMEPAGE =	https://typst.app/

# Apache-2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODCARGO_WANTLIB} crypto m ssl

MODULES =	devel/cargo

MODCARGO_INSTALL_TARGET_PATHS =	crates/typst-cli
MODCARGO_TEST_ARGS =	--workspace

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

.include "crates.inc"
.include <bsd.port.mk>
