# $OpenBSD: Makefile,v 1.11 2003/08/15 03:48:28 marcm Exp $

COMMENT=		"high-performance 2D graphics library"

VERSION=		2.3.14
DISTNAME=		libart_lgpl-${VERSION}
PKGNAME=		libart-${VERSION}
CATEGORIES=		graphics

HOMEPAGE=		http://www.artofcode.com/libart.html

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# lgpl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libart_lgpl/2.3/}

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

.include <bsd.port.mk>
