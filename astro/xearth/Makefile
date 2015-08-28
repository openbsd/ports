# $OpenBSD: Makefile,v 1.28 2015/08/28 14:22:14 naddy Exp $

COMMENT=	set the root window to the image of earth
DISTNAME=	xearth-1.1
REVISION =	5
CATEGORIES=	astro x11
MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/}

PERMIT_PACKAGE_CDROM=   Cannot sell
PERMIT_PACKAGE_FTP=     Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xt c m

CONFIGURE_STYLE= imake

NO_TEST=	Yes

.include <bsd.port.mk>
