# $OpenBSD: Makefile,v 1.11 2000/09/29 18:44:29 brad Exp $

DISTNAME=	libxml2-2.2.3
PKGNAME=	libxml-2.2.3
CATEGORIES=	textproc
NEED_VERSION=	1.330
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/libxml

HOMEPAGE=	http://xmlsoft.org/

MAINTAINER=	rohee@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --without-iconv

.include <bsd.port.mk>
