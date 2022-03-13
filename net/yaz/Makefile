COMMENT=		Z39.50/SR client and API library
DISTNAME=		yaz-5.31.1
CATEGORIES=		net

SHARED_LIBS+=		yaz		1.2	# 5.0
SHARED_LIBS+=		yaz_icu		1.3	# 5.0
SHARED_LIBS+=		yaz_server	1.2	# 5.0

HOMEPAGE=		http://www.indexdata.dk/yaz/

# Revised BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c iconv intl m curses pthread readline z \
			xml2 gpg-error gcrypt exslt xslt icudata \
			icui18n icuuc lzma ${COMPILER_LIBCXX} 

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		http://ftp.indexdata.dk/pub/yaz/

LIB_DEPENDS=		textproc/libxml \
			security/libgpg-error \
			security/libgcrypt \
			textproc/libxslt \
			textproc/icu4c

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--without-gnutls
CONFIGURE_ENV+=		LIBS="-lexecinfo"

.include <bsd.port.mk>
