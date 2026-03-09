COMMENT =		light RDF manipulation with LADSPA plugin support

# 0.6.1 exports its own copy of MD5_* functions which may cause issues
# if other software using this pulls in libcrypto
GH_ACCOUNT =		swh
GH_PROJECT =		LRDF
GH_TAGNAME =		v0.6.0
PKGNAME =		lib${DISTNAME:L}
CATEGORIES =		textproc

SHARED_LIBS =		lrdf	1.0	# 0.0

HOMEPAGE =		https://github.com/swh/LRDF/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += crypto curl iconv icudata icuuc m nghttp2 nghttp3
WANTLIB += ngtcp2 ngtcp2_crypto_libressl pthread raptor2 ssl xml2
WANTLIB += xslt yajl z

BUILD_DEPENDS =		audio/ladspa
LIB_DEPENDS =		devel/libyajl \
			textproc/raptor

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11
AUTORECONF =		./autogen.sh
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

TEST_DEPENDS =		audio/swh-plugins

.include <bsd.port.mk>
