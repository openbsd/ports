# $OpenBSD: Makefile,v 1.74 2004/02/06 04:44:12 kevlo Exp $

COMMENT=		"XML parsing library"

VERSION=		2.6.5
DISTNAME=		libxml2-${VERSION}
PKGNAME=		libxml-${VERSION}
CATEGORIES=		textproc
MASTER_SITES=		ftp://xmlsoft.org/ \
			${MASTER_SITE_GNOME:=sources/libxml2/2.6/}

HOMEPAGE=		http://xmlsoft.org/ 

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig

MODULES=		iconv

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+=	--with-html-dir="${PREFIX}/share"
CONFIGURE_ARGS+=	--with-iconv="${LOCALBASE}"
CONFIGURE_ARGS+=	--without-python
CONFIGURE_ARGS+=	--without-threads

.include <bsd.port.mk>
