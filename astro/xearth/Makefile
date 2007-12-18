# $OpenBSD: Makefile,v 1.19 2007/12/18 09:30:31 ajacoutot Exp $

COMMENT=	set the root window to the image of earth
DISTNAME=	xearth-1.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	astro x11
MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/}

MAINTAINER=	Paul Janzen <pjanzen@openbsd.org>

PERMIT_PACKAGE_CDROM=   Cannot sell
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Cannot sell
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xt c m

CONFIGURE_STYLE= imake

USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
