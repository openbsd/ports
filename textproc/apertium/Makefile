# $OpenBSD: Makefile,v 1.1.1.1 2016/01/01 11:50:01 bentley Exp $

COMMENT =		rule-based machine translation platform

V =			3.4
DISTNAME =		apertium-3.4.0

SHARED_LIBS +=  apertium3-$V              0.0 # 0.0
SHARED_LIBS +=  apertium3                 0.0 # 0.0

CATEGORIES =		textproc

HOMEPAGE =		https://www.apertium.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c lttoolbox3-3.3 lzma m pcre pcrecpp pcreposix pthread
WANTLIB += stdc++ xml2 z

MODULES =		converters/libiconv

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=apertium/}

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		shells/bash \
			textproc/libxslt
LIB_DEPENDS =		devel/pcre \
			textproc/lttoolbox

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS =		V

.include <bsd.port.mk>
