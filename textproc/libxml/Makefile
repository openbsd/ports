# $OpenBSD: Makefile,v 1.63 2003/06/17 03:40:03 marcm Exp $

COMMENT=		"XML parsing library"

VERSION=		2.5.7
DISTNAME=		libxml2-${VERSION}
PKGNAME=		libxml-${VERSION}p1
CATEGORIES=		textproc
MASTER_SITES=		ftp://xmlsoft.org/ \
			ftp://xmlsoft.org/old/

HOMEPAGE=		http://xmlsoft.org/ 

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

.include <bsd.port.mk>
