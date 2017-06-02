# $OpenBSD: Makefile,v 1.19 2017/06/02 10:51:56 schwarze Exp $

COMMENT=		Z39.50/SR client and API library
DISTNAME=		yaz-3.0.49
CATEGORIES=		net
REVISION=		5

SHARED_LIBS+=		yaz		1.1	# 3.0
SHARED_LIBS+=		yaz_icu		1.2	# 3.0
SHARED_LIBS+=		yaz_server	1.1	# 3.0

HOMEPAGE=		http://www.indexdata.dk/yaz/

# Revised BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext

WANTLIB=		c m ncurses pthread readline z \
			xml2 gpg-error gcrypt exslt xslt icudata \
			icui18n icuuc lzma ${LIBCXX} 

MASTER_SITES=		http://ftp.indexdata.dk/pub/yaz/

LIB_DEPENDS=		textproc/libxml \
			security/libgpg-error \
			security/libgcrypt \
			textproc/libxslt \
			textproc/icu4c

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--without-gnutls

.include <bsd.port.mk>
