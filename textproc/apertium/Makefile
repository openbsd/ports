COMMENT =		rule-based machine translation platform

V =			3.9.4
DISTNAME =		apertium-$V

SHARED_LIBS +=  apertium                 1.0 # 3.0

CATEGORIES =		textproc

DEBUG_PACKAGES =	${BUILD_PACKAGES}

HOMEPAGE =		https://www.apertium.org/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

USE_GMAKE =		Yes

# GPLv2+
PERMIT_PACKAGE =	Yes

# uses pledge()

WANTLIB += ${COMPILER_LIBCXX} xml2 z
WANTLIB += c iconv lzma m pthread lttoolbox
WANTLIB += icudata icui18n icuio icuuc

SITES =		https://github.com/apertium/apertium/releases/download/v$V/

EXTRACT_SUFX =		.tar.bz2

# C++2a
COMPILER =		base-clang ports-gcc

MODULES =		lang/python
BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/utfcpp
RUN_DEPENDS =		shells/bash \
			textproc/libxslt
LIB_DEPENDS =		converters/libiconv \
			textproc/icu4c \
			textproc/lttoolbox>=3.7.1
TEST_DEPENDS =		${MODPY_TEST_DEPENDS} \
			devel/shellcheck \
			textproc/py-lxml${MODPY_FLAVOR}

MODPY_BUILDDEP =	No
MODPY_ADJ_FILES =	scripts/apertium-editdist \
			scripts/apertium-genvdix \
			scripts/apertium-genvldix \
			scripts/apertium-genvrdix \
			scripts/apertium-metalrx \
			tests/run_tests.py

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/utf8cpp" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} \
		${WRKSRC}/scripts/apertium-filter-dix.in \
		${WRKSRC}/scripts/apertium-filter-rules.in \
		${WRKSRC}/scripts/apertium-metalrx-to-lrx.in \
		${WRKSRC}/scripts/apertium-translate-to-default-equivalent.in \
		${WRKSRC}/tests/deshtml-alt/run \
		${WRKSRC}/tests/deslatex/run \
		${WRKSRC}/tests/odt/run \
		${WRKSRC}/tests/sh/run

.include <bsd.port.mk>
