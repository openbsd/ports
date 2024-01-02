COMMENT =		implementation of XMP
DISTNAME =		exempi-2.6.3

CATEGORIES =		textproc

SHARED_LIBS +=  exempi               2.1      # 9.2

HOMEPAGE =		http://libopenraw.freedesktop.org/wiki/Exempi

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c expat m pthread ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc

# configure checks for libiconv but it's unused
BUILD_DEPENDS =		converters/libiconv

SITES =			http://libopenraw.freedesktop.org/download/
DEBUG_PACKAGES =	${BUILD_PACKAGES}

USE_GMAKE =		yes
CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16
CONFIGURE_ARGS +=	--enable-unittest=no
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			CXXFLAGS="${CXXFLAGS} -D_LIBCPP_ENABLE_CXX17_REMOVED_UNARY_BINARY_FUNCTION" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

.include <bsd.port.mk>
