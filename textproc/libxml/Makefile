# $OpenBSD: Makefile,v 1.68 2003/11/15 15:12:53 sturm Exp $

COMMENT=		"XML parsing library"

VERSION=		2.5.10
DISTNAME=		libxml2-${VERSION}
PKGNAME=		libxml-${VERSION}
CATEGORIES=		textproc
MASTER_SITES=		ftp://xmlsoft.org/ \
			ftp://xmlsoft.org/old/

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
