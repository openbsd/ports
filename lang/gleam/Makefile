COMMENT =		statically typed language for Erlang VM and JavaScript

# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =		sparc64

GH_ACCOUNT =		gleam-lang
GH_PROJECT =		gleam
GH_TAGNAME =		v1.2.1

HOMEPAGE =		https://gleam.run

MAINTAINER =		Volker Schlecht <openbsd-ports@schlecht.dev>

CATEGORIES =		lang

# APACHE 2.0
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo \
			lang/erlang
COMPILER =		base-clang ports-gcc
WANTLIB += 		${MODCARGO_WANTLIB} m

CONFIGURE_STYLE =	cargo

post-patch:
	${SUBST_CMD} ${WRKSRC}/compiler-core/src/build/package_compiler.rs \
	${WRKSRC}/compiler-cli/src/shell.rs \
	${WRKSRC}/compiler-cli/src/run.rs

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gleam/
	${INSTALL_PROGRAM} ${WRKSRC}/target/release/gleam \
		${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/LICENCE ${PREFIX}/share/doc/gleam/LICENSE

.include "crates.inc"
.include <bsd.port.mk>
