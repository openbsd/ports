# ring-v0.16.20 does not support these archs
NOT_FOR_ARCHS =			powerpc64 riscv64 sparc64

COMMENT =			modern Lua linter written in Rust

GH_ACCOUNT =			Kampfkarren
GH_PROJECT =			selene
GH_TAGNAME =			0.25.0
REVISION =			0

CATEGORIES =			devel

HOMEPAGE =			https://kampfkarren.github.io/selene/

WANTLIB +=			${MODCARGO_WANTLIB}

# Mozilla Public License 2.0
PERMIT_PACKAGE =		Yes

MODULES =			devel/cargo
CONFIGURE_STYLE =		cargo
SEPARATE_BUILD =		Yes

BUILD_DEPENDS =			security/rust-ring

MODCARGO_INSTALL_TARGET_PATH =	selene

.include "crates.inc"

.include <bsd.port.mk>
