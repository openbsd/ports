# $OpenBSD: Makefile,v 1.13 2005/01/03 22:41:51 alek Exp $

COMMENT=		"high-performance 2D graphics library"

VERSION=		2.3.16
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
WANTLIB=		m

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libart_lgpl/2.3/}

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

.include <bsd.port.mk>
