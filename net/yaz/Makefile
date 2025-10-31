COMMENT=		Z39.50/SR client and API library
DISTNAME=		yaz-5.31.1
CATEGORIES=		net
REVISION=		3

SHARED_LIBS+=		yaz		1.2	# 5.0
SHARED_LIBS+=		yaz_icu		1.3	# 5.0
SHARED_LIBS+=		yaz_server	1.2	# 5.0

HOMEPAGE=		http://www.indexdata.dk/yaz/

# Revised BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c curses execinfo exslt iconv icudata
WANTLIB += icui18n icuuc m readline xml2 xslt z

COMPILER =		base-clang ports-gcc base-gcc

SITES=			http://ftp.indexdata.dk/pub/yaz/

LIB_DEPENDS=		textproc/libxml \
			textproc/libxslt \
			textproc/icu4c

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--without-gnutls \
			--without-memcached \
			--without-redis
CONFIGURE_ENV+=		LIBS="-lexecinfo"

.include <bsd.port.mk>
