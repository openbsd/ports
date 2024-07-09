COMMENT =	Unicode support to C++ with simple and easy APIs

V = 0.4.0
DISTNAME =	libunicode-${V}

GH_ACCOUNT =	contour-terminal
GH_PROJECT =	libunicode
GH_TAGNAME =	v${V}

SHARED_LIBS  =	unicode		0.0 # 0.0
SHARED_LIBS +=	unicode_loader	0.0 # 0.0
SHARED_LIBS +=	unicode_ucd	0.0 # 0.0

CATEGORIES =	textproc

MAINTAINER =	SASANO Takayoshi <uaa@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} c m

# C++20
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/fmt \
			textproc/unicode/ucd

CONFIGURE_STYLE =	cmake

# to avoid "Can not find target to add properties to: Catch2" error,
# set LIBUNICODE_TESTING=OFF (and Catch2 is not used)

CONFIGURE_ARGS =	-DLIBUNICODE_TESTING=OFF \
			-DLIBUNICODE_UCD_DIR=${LOCALBASE}/share/unicode/ucd

.include <bsd.port.mk>
