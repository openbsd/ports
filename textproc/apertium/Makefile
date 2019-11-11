# $OpenBSD: Makefile,v 1.14 2019/11/11 08:49:10 bentley Exp $

COMMENT =		rule-based machine translation platform

V =			3.5
VER =			3.5.2
DISTNAME =		apertium-${VER}
REVISION =		1

SHARED_LIBS +=  apertium3-$V              0.0 # 0.0
SHARED_LIBS +=  apertium3                 0.0 # 0.0

CATEGORIES =		textproc

DEBUG_PACKAGES =	${BUILD_PACKAGES}

HOMEPAGE =		https://www.apertium.org/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

USE_GMAKE =		Yes

# GPLv2+
PERMIT_PACKAGE =	Yes

# uses pledge()

WANTLIB += c iconv lttoolbox3-$V lzma m pcre pcrecpp pcreposix pthread
WANTLIB += ${COMPILER_LIBCXX} xml2 z

MASTER_SITES =		https://github.com/apertium/apertium/releases/download/v${VER}/

# C++2a
COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		shells/bash \
			textproc/libxslt
LIB_DEPENDS =		converters/libiconv \
			devel/pcre \
			textproc/lttoolbox>=3.4.0

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS =		V

.include <bsd.port.mk>
