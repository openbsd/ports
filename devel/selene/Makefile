# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =			sparc64

COMMENT =			modern Lua linter written in Rust

GH_ACCOUNT =			Kampfkarren
GH_PROJECT =			selene
GH_TAGNAME =			0.27.1

CATEGORIES =			devel

HOMEPAGE =			https://kampfkarren.github.io/selene/

WANTLIB +=			${MODCARGO_WANTLIB}

# Mozilla Public License 2.0
PERMIT_PACKAGE =		Yes

MODULES =			devel/cargo
CONFIGURE_STYLE =		cargo
SEPARATE_BUILD =		Yes

MODCARGO_INSTALL_TARGET_PATHS =	selene

.include "crates.inc"

.include <bsd.port.mk>
