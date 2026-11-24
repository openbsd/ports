COMMENT=	mail purpose library

GH_ACCOUNT=	dinhviethoa
GH_PROJECT=	libetpan
GH_TAGNAME=	2.0.1
CATEGORIES=	mail devel

SHARED_LIBS +=  etpan                19.0     # 24.0

HOMEPAGE=	https://www.etpan.org/libetpan.html

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} crypto curl iconv icudata icuuc
WANTLIB += json-c m nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_libressl
WANTLIB += sasl2 ssl xml2 z

COMPILER=	base-clang ports-gcc
DEBUG_PACKAGES=	${BUILD_PACKAGES}

CONFIGURE_STYLE=  autoreconf
AUTOCONF_VERSION= 2.73
AUTOMAKE_VERSION= 1.18
AUTORECONF=	  ./autogen.sh

LIB_DEPENDS=	converters/libiconv \
		devel/json-c \
		net/curl \
		security/cyrus-sasl2 \
		textproc/icu4c \
		textproc/libxml

CONFIGURE_ARGS=	--with-curl=auto \
		--with-sasl="${LOCALBASE}" \
		--without-gnutls

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
