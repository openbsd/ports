COMMENT =	recursive structural transfer module for apertium

DISTNAME =	apertium-recursive-$V
V =		1.1.2

CATEGORIES =	textproc

HOMEPAGE =	https://wiki.apertium.org/wiki/Apertium-recursive

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# GPLv3 only
PERMIT_PACKAGE =	Yes

# uses pledge()

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += apertium c icudata icui18n icuio icuuc lttoolbox m xml2

SITES =		https://github.com/apertium/apertium-recursive/releases/download/v$V/

EXTRACT_SUFX =	.tar.bz2

# c++20
COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/utfcpp
LIB_DEPENDS =		textproc/apertium \
			textproc/lttoolbox

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include/utf8cpp"

DEBUG_PACKAGES = ${BUILD_PACKAGES}

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

.include <bsd.port.mk>
