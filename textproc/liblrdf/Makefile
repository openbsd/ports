# $OpenBSD: Makefile,v 1.16 2019/07/12 20:50:00 sthen Exp $

COMMENT =		light RDF manipulation with LADSPA plugin support

DISTNAME =		LRDF-0.5.0
PKGNAME =		lib${DISTNAME:L}
REVISION =		6
CATEGORIES =		textproc

SHARED_LIBS =		lrdf	1.0	# 0.0

HOMEPAGE =		https://github.com/swh/LRDF/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =  crypto curl iconv intl lzma m nghttp2 pthread raptor2 ssl
WANTLIB += xml2 xslt yajl z

MASTER_SITES =		https://spacehopper.org/mirrors/
BUILD_DEPENDS =		audio/ladspa
LIB_DEPENDS =		devel/libyajl \
			textproc/raptor

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11
AUTORECONF =		./autogen.sh
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

TEST_DEPENDS =	audio/swh-plugins

.include <bsd.port.mk>
