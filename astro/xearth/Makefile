# $OpenBSD: Makefile,v 1.20 2009/08/10 06:29:52 kili Exp $

COMMENT=	set the root window to the image of earth
DISTNAME=	xearth-1.1
PKGNAME=	${DISTNAME}p2
CATEGORIES=	astro x11
MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/}

MAINTAINER=	Paul Janzen <pjanzen@openbsd.org>

PERMIT_PACKAGE_CDROM=   Cannot sell
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Cannot sell
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xt c m \
			pthread-stubs xcb

CONFIGURE_STYLE= imake

USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
