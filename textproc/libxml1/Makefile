# $OpenBSD: Makefile,v 1.8 2002/11/21 02:33:59 margarida Exp $

COMMENT=	"XML parsing library for GNOME"

VERSION=	1.8.17
DISTNAME=	libxml-${VERSION}
PKGNAME=	libxml1-${VERSION}
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libxml/1.8/}

HOMEPAGE=	http://xmlsoft.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# MIT license
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
