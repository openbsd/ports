# $OpenBSD: Makefile,v 1.60 2003/01/14 06:34:16 kevlo Exp $

COMMENT=	"XML parsing library"

VERSION=	2.4.28
DISTNAME=	libxml2-${VERSION}
PKGNAME=	libxml-${VERSION}
CATEGORIES=	textproc
MASTER_SITES=	ftp://xmlsoft.org/ \
		ftp://xmlsoft.org/old/

HOMEPAGE=	http://xmlsoft.org/ 

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

MODULES=	iconv

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ARGS+= --with-html-dir="${PREFIX}/share"
CONFIGURE_ARGS+= --with-iconv="${LOCALBASE}"
CONFIGURE_ARGS+= --without-python

REGRESS_TARGET=	tests

.include <bsd.port.mk>
