COMMENT =	TOML config parser and serializer for C++

GH_ACCOUNT =	marzer
GH_PROJECT =	tomlplusplus
GH_TAGNAME =	v3.4.0

CATEGORIES =	textproc

SHARED_LIBS +=	tomlplusplus		0.0 # 3.4.0

MAINTAINER =	SASANO Takayoshi <uaa@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

# C++26
COMPILER =		base-clang ports-gcc

MODULES =		devel/meson

BUILD_DEPENDS =		devel/cmake/core

do-configure:
	cd ${WRKSRC}; ${MODMESON_configure}

.include <bsd.port.mk>
