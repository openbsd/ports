# $OpenBSD: Makefile,v 1.8 2002/09/19 06:42:00 marcm Exp $

COMMENT=		"high-performance 2D graphics library"

VERSION=		2.3.10
DISTNAME=		libart_lgpl-${VERSION}
PKGNAME=		libart-${VERSION}
CATEGORIES=		graphics

HOMEPAGE=		http://www.artofcode.com/libart.html

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=2.0.0/sources/libart_lgpl/}

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

.include <bsd.port.mk>
