COMMENT =		finite-state lexical processing toolkit

V =			3.8.2
DISTNAME =		lttoolbox-$V

SHARED_LIBS +=		lttoolbox                2.0 # 3.0

CATEGORIES =		textproc

HOMEPAGE =		https://wiki.apertium.org/wiki/Lttoolbox

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# GPLv2+
PERMIT_PACKAGE =	Yes

# uses pledge()

WANTLIB += c m pthread ${COMPILER_LIBCXX} xml2
WANTLIB += icui18n icuio icuuc

SITES =		https://github.com/apertium/lttoolbox/releases/download/v$V/

EXTRACT_SUFX =		.tar.bz2

# C++2b
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/utfcpp
LIB_DEPENDS =		textproc/icu4c \
			textproc/libxml

#CONFIGURE_ARGS =	-DCMAKE_CXX_FLAGS="-I${LOCALBASE}/include ${CXXFLAGS}"

.include <bsd.port.mk>
