# $OpenBSD: Makefile,v 1.4 2001/09/01 00:43:20 brad Exp $

COMMENT=	"XML parsing library for GNOME"

VERSION=	1.8.15
DISTNAME=	libxml-${VERSION}
PKGNAME=	libxml1-${VERSION}
CATEGORIES=	textproc
NEED_VERSION=	1.435
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/libxml

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
