# $OpenBSD: Makefile,v 1.44 2002/03/22 17:13:16 brad Exp $

COMMENT=	"XML parsing library"

VERSION=	2.4.18
DISTNAME=	libxml2-${VERSION}
PKGNAME=	libxml-${VERSION}
CATEGORIES=	textproc
NEED_VERSION=	1.504
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/libxml

HOMEPAGE=	http://xmlsoft.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS+=	::devel/pkgconfig
RUN_DEPENDS+=	::devel/pkgconfig

MODULES=	iconv

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ARGS+= --with-html-dir="${PREFIX}/share"
CONFIGURE_ARGS+= --with-iconv="${LOCALBASE}"

FLAVORS=	python
FLAVOR?=

.if ${FLAVOR:L:Mpython}
BUILD_DEPENDS+=	:python-2.2*:lang/python/2.2
RUN_DEPENDS+=	:python-2.2*:lang/python/2.2
CONFIGURE_ARGS+= --with-pyton
.else
CONFIGURE_ARGS+= --without-python
.endif

REGRESS_TARGET=	tests

.include <bsd.port.mk>
