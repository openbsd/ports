# $OpenBSD: Makefile,v 1.17 2001/03/18 10:48:48 kevlo Exp $

DISTNAME=	libxml2-2.3.4
PKGNAME=	libxml-2.3.4
CATEGORIES=	textproc
NEED_VERSION=	1.341
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

.include <bsd.port.mk>
