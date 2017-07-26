# $OpenBSD: Makefile,v 1.21 2017/07/26 22:45:28 sthen Exp $

COMMENT=		Z39.50/SR client and API library
DISTNAME=		yaz-3.0.49
CATEGORIES=		net
REVISION=		6

SHARED_LIBS+=		yaz		1.1	# 3.0
SHARED_LIBS+=		yaz_icu		1.2	# 3.0
SHARED_LIBS+=		yaz_server	1.1	# 3.0

HOMEPAGE=		http://www.indexdata.dk/yaz/

# Revised BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext

WANTLIB=		c m ncurses pthread readline z \
			xml2 gpg-error gcrypt exslt xslt icudata \
			icui18n icuuc lzma ${COMPILER_LIBCXX} 

MASTER_SITES=		http://ftp.indexdata.dk/pub/yaz/

LIB_DEPENDS=		textproc/libxml \
			security/libgpg-error \
			security/libgcrypt \
			textproc/libxslt \
			textproc/icu4c

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--without-gnutls

.include <bsd.port.mk>
