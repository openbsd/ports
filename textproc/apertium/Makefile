# $OpenBSD: Makefile,v 1.3 2016/09/13 18:52:05 naddy Exp $

COMMENT =		rule-based machine translation platform

V =			3.4
DISTNAME =		apertium-3.4.0
REVISION =		0

SHARED_LIBS +=  apertium3-$V              0.0 # 0.0
SHARED_LIBS +=  apertium3                 0.0 # 0.0

CATEGORIES =		textproc

HOMEPAGE =		https://www.apertium.org/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c iconv lttoolbox3-3.3 lzma m pcre pcrecpp pcreposix pthread
WANTLIB += stdc++ xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=apertium/}

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		shells/bash \
			textproc/libxslt
LIB_DEPENDS =		converters/libiconv \
			devel/pcre \
			textproc/lttoolbox

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS =		V

.include <bsd.port.mk>
