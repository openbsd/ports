# $OpenBSD: Makefile,v 1.13 2000/10/22 14:03:51 espie Exp $

DISTNAME=	libxml2-2.2.4
PKGNAME=	libxml-2.2.4
CATEGORIES=	textproc
NEED_VERSION=	1.336
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/libxml

HOMEPAGE=	http://xmlsoft.org/

MAINTAINER=	Bruno Rohee <rohee@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --without-iconv

.include <bsd.port.mk>
