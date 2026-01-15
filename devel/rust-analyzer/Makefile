COMMENT =	modular compiler frontend for the Rust language
CATEGORIES =	devel

GH_ACCOUNT =	rust-lang
GH_PROJECT =	rust-analyzer
GH_TAGNAME =	2026-01-12

DISTNAME =	${GH_PROJECT}-${GH_TAGNAME:S/-//g}

HOMEPAGE =	https://rust-analyzer.github.io/

# MIT OR Apache-2.0
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	lang/rust,-src \
		lang/rust,-rustfmt
BUILD_DEPENDS =	lang/rust,-rustfmt \
		textproc/mdbook
TEST_DEPENDS =	lang/rust,-rustfmt

WANTLIB += ${MODCARGO_WANTLIB} m

MODULES =	devel/cargo

MODCARGO_INSTALL_TARGET_PATHS =	crates/rust-analyzer

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	cargo

# Make `rust-analyzer --version` print the right thing.
# (otherwise it reports itself as version 0.0.0)
MAKE_ENV += CFG_RELEASE=${GH_TAGNAME}

# generate HTML docs
post-build:
	${MODCARGO_CARGO_RUN} xtask codegen
	cd ${WRKSRC}/docs/book && ${SETENV} ${MAKE_ENV} \
		${LOCALBASE}/bin/mdbook build

DOCDIR =	${PREFIX}/share/doc/rust-analyzer
post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${WRKSRC}/docs/book/book && pax -rw . ${DOCDIR}

.include "crates.inc"

.include <bsd.port.mk>
