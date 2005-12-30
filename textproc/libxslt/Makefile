# $OpenBSD: Makefile,v 1.46 2005/12/30 10:13:00 steven Exp $

COMMENT=		"XSLT C Library for GNOME"

DISTNAME=		libxslt-1.1.12
PKGNAME=		$(DISTNAME)p3
SHARED_LIBS=		exslt	9.0 \
			xslt	3.0
MODGNU_SHARED_LIBS=	xslt	''

CATEGORIES=		textproc

HOMEPAGE=		http://xmlsoft.org/XSLT/

MASTER_SITES=		ftp://xmlsoft.org/ \
			${MASTER_SITE_GNOME:=sources/libxslt/1.1/}

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c gpg-error iconv intl m z 

LIB_DEPENDS=		xml2.8::textproc/libxml \
			gcrypt.12::security/libgcrypt

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-libxml-include-prefix='${LOCALBASE}/include/'
CONFIGURE_ARGS+=	--without-python

.include <bsd.port.mk>
