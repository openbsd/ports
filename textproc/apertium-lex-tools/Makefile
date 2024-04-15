COMMENT =		module for compiling and processing lexical rules

V =			0.4.2
DISTNAME =		apertium-lex-tools-$V

SHARED_LIBS +=  apertium-lex-tools        0.0 # 1.0

CATEGORIES =		textproc

HOMEPAGE =		http://wiki.apertium.org/wiki/Constraint-based_lexical_selection_module

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# GPLv2+
PERMIT_PACKAGE =	Yes

# uses pledge()

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += c iconv icudata icui18n icuio icuuc lttoolbox lzma
WANTLIB += m xml2 z

COMPILER =		base-clang ports-gcc base-gcc

SITES =	https://github.com/apertium/apertium-lex-tools/releases/download/v$V/

EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python
MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	scripts/*.py

BUILD_DEPENDS =		devel/utfcpp
LIB_DEPENDS =		textproc/icu4c \
			textproc/libxml \
			textproc/lttoolbox

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include/utf8cpp"

post-extract:
	sed -i 's,/bin/bash,${LOCALBASE}/bin/bash,' \
		${WRKSRC}/testing/run

post-install:
	sed -i 's,/bin/bash,${LOCALBASE}/bin/bash,' \
		${PREFIX}/bin/apertium-validate-lrx

.include <bsd.port.mk>
