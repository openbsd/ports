COMMENT =		Lua code formatter

V =			2.3.0
DIST_TUPLE +=		github JohnnyMorganz StyLua v${V} .
DISTNAME =		stylua-${V}

CATEGORIES =		devel textproc
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# MPL-2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB}

MODULES =		devel/cargo
CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes
WRKSRC =		${WRKDIR}/StyLua-${V}

EXAMPLES_DIR =	${PREFIX}/share/examples/stylua
post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	${INSTALL_DATA} ${FILESDIR}/example_stylua.toml \
		${EXAMPLES_DIR}/stylua.toml

.include "crates.inc"
.include <bsd.port.mk>
