# $OpenBSD: Makefile,v 1.18 2001/03/26 03:00:39 kevlo Exp $

COMMENT=	"xml parsing library"

VERSION=	2.3.5
DISTNAME=	libxml2-${VERSION}
PKGNAME=	libxml-${VERSION}
CATEGORIES=	textproc
NEED_VERSION=	1.364
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/libxml

HOMEPAGE=	http://xmlsoft.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --without-iconv
CONFIGURE_ARGS+= --with-html-dir=${PREFIX}/share

.include <bsd.port.mk>
