# $OpenBSD: Makefile,v 1.50 2006/07/05 04:34:09 steven Exp $

COMMENT=		"XSLT C Library for GNOME"

DISTNAME=		libxslt-1.1.17
SHARED_LIBS=		exslt	9.2 \
			xslt	3.2

CATEGORIES=		textproc

HOMEPAGE=		http://xmlsoft.org/XSLT/

MASTER_SITES=		ftp://xmlsoft.org/libxslt/ \
			${MASTER_SITE_GNOME:=sources/libxslt/1.1/}

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c gpg-error iconv intl m z 

LIB_DEPENDS=		xml2.9:libxml->=2.6.25:textproc/libxml \
			gcrypt.12::security/libgcrypt

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-libxml-include-prefix='${LOCALBASE}/include/'
CONFIGURE_ARGS+=	--without-python

.include <bsd.port.mk>
