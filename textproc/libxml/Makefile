# $OpenBSD: Makefile,v 1.54 2002/10/22 06:09:28 kevlo Exp $

COMMENT=	"XML parsing library"

VERSION=	2.4.26
DISTNAME=	libxml2-${VERSION}
PKGNAME=	libxml-${VERSION}
CATEGORIES=	textproc
MASTER_SITES=	ftp://xmlsoft.org/

HOMEPAGE=	http://xmlsoft.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
RUN_DEPENDS=	${BUILD_DEPENDS}

MODULES=	iconv

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ARGS+= --with-html-dir="${PREFIX}/share"
CONFIGURE_ARGS+= --with-iconv="${LOCALBASE}"
CONFIGURE_ARGS+= --without-python

REGRESS_TARGET=	tests

.include <bsd.port.mk>
