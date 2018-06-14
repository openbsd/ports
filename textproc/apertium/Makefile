# $OpenBSD: Makefile,v 1.9 2018/06/14 07:03:50 bentley Exp $

COMMENT =		rule-based machine translation platform

V =			3.5
VER =			3.5.1
DISTNAME =		apertium-${VER}

SHARED_LIBS +=  apertium3-$V              0.0 # 0.0
SHARED_LIBS +=  apertium3                 0.0 # 0.0

CATEGORIES =		textproc

HOMEPAGE =		https://www.apertium.org/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

USE_GMAKE =		Yes

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c iconv lttoolbox3-3.4 lzma m pcre pcrecpp pcreposix pthread
WANTLIB += ${COMPILER_LIBCXX} xml2 z

MASTER_SITES =		https://github.com/apertium/apertium/releases/download/v${VER}/ \
			https://distfiles.ajb.soy/

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
