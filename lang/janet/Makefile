COMMENT =	functional and imperative programming language
CATEGORIES =	lang

GH_ACCOUNT =	janet-lang
GH_PROJECT =	janet
GH_TAGNAME =	v1.20.0

SHARED_LIBS +=	janet		8.0 # 1.20

HOMEPAGE =	https://www.janet-lang.org/
MAINTAINER =	James Turner <james@calminferno.net>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread

# Needs TLS
COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

USE_GMAKE =	Yes
MAKE_FLAGS =	PREFIX="${PREFIX}" CFLAGS="${CFLAGS}" \
		JANET_LIBRARY="build/libjanet.so.${LIBjanet_VERSION}"

.include <bsd.port.mk>
