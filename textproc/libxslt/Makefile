# $OpenBSD: Makefile,v 1.35 2004/06/16 05:45:49 kevlo Exp $

COMMENT=		"XSLT C Library for GNOME"

DISTNAME=		libxslt-1.1.7
CATEGORIES=		textproc

HOMEPAGE=		http://xmlsoft.org/XSLT/

MASTER_SITES=		ftp://xmlsoft.org/ \
			${MASTER_SITE_GNOME:=sources/libxslt/1.0/}

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		xml2.8.10::textproc/libxml

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-libxml-include-prefix='${LOCALBASE}/include/'
CONFIGURE_ARGS+=	--without-python

.include <bsd.port.mk>
