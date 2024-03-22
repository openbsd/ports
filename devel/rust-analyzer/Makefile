BROKEN =	fail to build with rust 1.77.0

COMMENT =	modular compiler frontend for the Rust language
CATEGORIES =	devel

GH_ACCOUNT =	rust-lang
GH_PROJECT =	rust-analyzer
GH_TAGNAME =	2023-12-18

DISTNAME =	${GH_PROJECT}-${GH_TAGNAME:S/-//g}

HOMEPAGE =	https://rust-analyzer.github.io/

# MIT OR Apache-2.0
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	lang/rust,-src \
		lang/rust,-rustfmt
BUILD_DEPENDS =	textproc/ruby-rouge \
		textproc/asciidoctor
TEST_DEPENDS =	lang/rust,-rustfmt

WANTLIB += ${MODCARGO_WANTLIB} m

MODULES =	devel/cargo

MODCARGO_INSTALL_TARGET_PATHS =	crates/rust-analyzer

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	cargo

# Make `rust-analyzer --version` print the right thing.
# (otherwise it reports itself as version 0.0.0)
MAKE_ENV += CFG_RELEASE=${GH_TAGNAME}

# generate manual.html
post-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		${LOCALBASE}/bin/asciidoctor --safe docs/user/manual.adoc

DOCDIR =	${PREFIX}/share/doc/rust-analyzer
post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/user/manual.html ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/user/manual.adoc ${DOCDIR}

.include "crates.inc"

.include <bsd.port.mk>
