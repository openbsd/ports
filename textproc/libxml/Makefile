# $OpenBSD: Makefile,v 1.20 2001/05/07 03:08:18 kevlo Exp $

COMMENT=	"XML parsing library"

VERSION=	2.3.6
DISTNAME=	libxml2-${VERSION}
PKGNAME=	libxml-${VERSION}
CATEGORIES=	textproc
NEED_VERSION=	1.384
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/libxml

HOMEPAGE=	http://xmlsoft.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	iconv.2::converters/libiconv

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ARGS+= --with-html-dir="${PREFIX}/share"

CFLAGS+=	-I${LOCALBASE}/include

.include <bsd.port.mk>
