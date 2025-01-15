COMMENT =	intrusion detection and prevention engine

VERSION =	3.0.13
DISTNAME =	modsecurity-v${VERSION}
PKGNAME  =	libmodsecurity-${VERSION}
SUPDISTFILES =	${DISTFILES:S/$/.asc/}

SHARED_LIBS =	modsecurity	1.0

CATEGORIES =	security

HOMEPAGE =	https://www.modsecurity.org

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} c crypto curl iconv lzma m ssl z \
			maxminddb nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_quictls \
			pcre pcre2-8 xml2 yajl

SITES =	https://github.com/SpiderLabs/ModSecurity/releases/download/v${VERSION}/

COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		converters/libiconv \
			devel/libyajl \
			devel/pcre \
			devel/pcre2 \
			net/curl \
			net/libmaxminddb \
			textproc/libxml

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--without-lmdb \
			--without-ssdeep \
			--without-lua

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/modsecurity/
	${INSTALL_DATA} ${WRKSRC}/unicode.mapping ${PREFIX}/share/modsecurity/

.include <bsd.port.mk>
