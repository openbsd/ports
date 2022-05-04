COMMENT =		C bindings generator from rust code

GH_ACCOUNT =		eqrion
GH_PROJECT =		cbindgen
GH_TAGNAME =		v0.23.0

CATEGORIES =		devel

# MPL-2.0
PERMIT_PACKAGE =	Yes

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

COMPILER =		base-clang ports-gcc

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

WANTLIB += c c++abi pthread

TEST_ENV =	CC=${CC} CXX=${CXX}

PATCHORIG =	.ports.orig

.include "crates.inc"

.include <bsd.port.mk>
