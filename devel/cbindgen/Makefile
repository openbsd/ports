COMMENT =		C bindings generator from rust code

GH_ACCOUNT =		eqrion
GH_PROJECT =		cbindgen
GH_TAGNAME =		v0.29.2

CATEGORIES =		devel

MAINTAINER =		Landry Breuil <landry@openbsd.org>
# MPL-2.0
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

WANTLIB +=	${MODCARGO_WANTLIB}

TEST_ENV =	CC=${CC} CXX=${CXX}

.include "crates.inc"

.include <bsd.port.mk>
