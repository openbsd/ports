COMMENT =	apertium module implementing anaphora resolution

DISTNAME =	apertium-anaphora-$V
V =		1.1.1

CATEGORIES =	textproc

HOMEPAGE =	https://wiki.apertium.org/wiki/Anaphora_resolution_module

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv3+
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += c icudata icui18n icuio icuuc lttoolbox m xml2

SITES =		https://github.com/apertium/apertium-anaphora/releases/download/v$V/

EXTRACT_SUFX =		.tar.bz2

# c++20
COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/utfcpp
LIB_DEPENDS =		textproc/icu4c \
			textproc/lttoolbox
RUN_DEPENDS =		shells/bash

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include/utf8cpp"

DEBUG_PACKAGES = ${BUILD_PACKAGES}

# for gnu stuff
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

.include <bsd.port.mk>
