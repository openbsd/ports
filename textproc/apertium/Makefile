# $OpenBSD: Makefile,v 1.16 2021/11/15 04:23:36 bentley Exp $

COMMENT =		rule-based machine translation platform

V =			3.7
VER =			3.7.2
DISTNAME =		apertium-${VER}

SHARED_LIBS +=  apertium3-$V              1.0 # 0.0
SHARED_LIBS +=  apertium3                 1.0 # 0.0

CATEGORIES =		textproc

DEBUG_PACKAGES =	${BUILD_PACKAGES}

HOMEPAGE =		https://www.apertium.org/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

USE_GMAKE =		Yes

# GPLv2+
PERMIT_PACKAGE =	Yes

# uses pledge()

WANTLIB += c iconv lzma m pcre pcrecpp pcreposix pthread
WANTLIB += ${COMPILER_LIBCXX} xml2 z
WANTLIB += icudata icui18n icuuc lttoolbox3-3.5

MASTER_SITES =		https://github.com/apertium/apertium/releases/download/v${VER}/

EXTRACT_SUFX =		.tar.xz

# C++2a
COMPILER =		base-clang ports-gcc

MODULES =		lang/python
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		shells/bash \
			textproc/libxslt
LIB_DEPENDS =		converters/libiconv \
			devel/pcre \
			textproc/icu4c \
			textproc/lttoolbox>=3.4.0

MODPY_BUILDDEP =	No
MODPY_ADJ_FILES =	scripts/apertium-editdist \
			scripts/apertium-genvdix \
			scripts/apertium-genvldix \
			scripts/apertium-genvrdix \
			scripts/apertium-metalrx

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS =		V

pre-configure:
	${SUBST_CMD} \
		${WRKSRC}/scripts/apertium-filter-dix.in \
		${WRKSRC}/scripts/apertium-filter-rules.in \
		${WRKSRC}/scripts/apertium-metalrx-to-lrx.in \
		${WRKSRC}/scripts/apertium-translate-to-default-equivalent.in

.include <bsd.port.mk>
