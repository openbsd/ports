COMMENT =		C bindings generator from rust code

GH_ACCOUNT =		eqrion
GH_PROJECT =		cbindgen
GH_TAGNAME =		v0.26.0

CATEGORIES =		devel

# MPL-2.0
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

WANTLIB += c c++abi pthread

TEST_ENV =	CC=${CC} CXX=${CXX}

.include "crates.inc"

.include <bsd.port.mk>
