# $OpenBSD: Makefile,v 1.7 2002/05/14 12:07:10 naddy Exp $

COMMENT=	"XML parsing library for GNOME"

VERSION=	1.8.17
DISTNAME=	libxml-${VERSION}
PKGNAME=	libxml1-${VERSION}
CATEGORIES=	textproc
NEED_VERSION=	1.500
MASTER_SITES=	${MASTER_SITE_GNOME:=stable/sources/libxml/}

HOMEPAGE=	http://xmlsoft.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

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
