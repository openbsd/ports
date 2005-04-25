# $OpenBSD: Makefile,v 1.87 2005/04/25 16:55:05 espie Exp $

COMMENT=		"XML parsing library"

VERSION=		2.6.16
DISTNAME=		libxml2-${VERSION}
PKGNAME=		libxml-${VERSION}p1
CATEGORIES=		textproc
MASTER_SITES=		ftp://xmlsoft.org/ \
			${MASTER_SITE_GNOME:=sources/libxml2/2.6/}

HOMEPAGE=		http://xmlsoft.org/ 

#FAKE=			all
# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m z 

MODULES=		converters/libiconv

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+=	--with-html-dir="${PREFIX}/share/doc"
CONFIGURE_ARGS+=	--with-html-subdir="libxml2/html"
CONFIGURE_ARGS+=	--with-iconv="${DEPBASE}"
CONFIGURE_ARGS+=	--without-python
CONFIGURE_ARGS+=	--without-threads

MAKE_FLAGS=	libxml2_la_LDFLAGS='-version-info 9:0:0'

.include <bsd.port.mk>
