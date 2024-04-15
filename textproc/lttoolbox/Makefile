COMMENT =		finite-state lexical processing toolkit

V =			3.7.6
DISTNAME =		lttoolbox-$V

SHARED_LIBS +=		lttoolbox                1.0 # 3.0

CATEGORIES =		textproc

HOMEPAGE =		https://wiki.apertium.org/wiki/Lttoolbox

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# GPLv2+
PERMIT_PACKAGE =	Yes

# uses pledge()

WANTLIB += c iconv lzma m pthread ${COMPILER_LIBCXX} xml2 z
WANTLIB += icudata icui18n icuio icuuc

SITES =		https://github.com/apertium/lttoolbox/releases/download/v$V/

EXTRACT_SUFX =		.tar.bz2

# C++2b
COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/utfcpp
LIB_DEPENDS =		converters/libiconv \
			textproc/icu4c \
			textproc/libxml

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include/utf8cpp"

.include <bsd.port.mk>
