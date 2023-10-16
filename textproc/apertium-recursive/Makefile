COMMENT =	recursive structural transfer module for apertium

DISTNAME =	apertium-recursive-$V
V =		1.0.1

CATEGORIES =	textproc

HOMEPAGE =	https://wiki.apertium.org/wiki/Apertium-recursive

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# GPLv3 only
PERMIT_PACKAGE =	Yes

# uses pledge()

WANTLIB += ${COMPILER_LIBCXX} c m xml2 apertium3-3.7 lttoolbox3-3.5

SITES =		https://github.com/apertium/apertium-recursive/releases/download/v$V/

EXTRACT_SUFX =	.tar.bz2

# c++20
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		textproc/apertium \
			textproc/lttoolbox

CONFIGURE_STYLE =	autoreconf

DEBUG_PACKAGES = ${BUILD_PACKAGES}

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

.include <bsd.port.mk>
