# $OpenBSD: Makefile,v 1.1.1.1 2021/01/01 12:28:25 bluhm Exp $

COMMENT =		intrusion detection and prevention engine

V =			3.0.4
DISTNAME =		modsecurity-v$V
PKGNAME  =		libmodsecurity-$V

SHARED_LIBS +=		modsecurity	0.0	# 0.0

CATEGORIES =		security

HOMEPAGE =		https://www.modsecurity.org

WANTLIB +=		${COMPILER_LIBCXX} c crypto curl iconv lzma m ssl z
WANTLIB +=		maxminddb nghttp2 pcre xml2 yajl

MASTER_SITES =		https://github.com/SpiderLabs/ModSecurity/releases/download/v$V/

# Apache 2.0
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		converters/libiconv \
			devel/libyajl \
			devel/pcre \
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
