# $OpenBSD: Makefile,v 1.1.1.1 2001/05/29 15:53:31 lebel Exp $

COMMENT=	"XML parsing library for GNOME"

VERSION=	1.8.13
DISTNAME=	libxml-${VERSION}
PKGNAME=	libxml1-${VERSION}
CATEGORIES=	textproc
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/libxml

HOMEPAGE=	http://xmlsoft.org/

MAINTAINER=	David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ARGS+= --with-html-dir="${PREFIX}/share"

.include <bsd.port.mk>
