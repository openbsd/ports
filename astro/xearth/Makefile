# $OpenBSD: Makefile,v 1.25 2013/03/10 22:28:05 espie Exp $

COMMENT=	set the root window to the image of earth
DISTNAME=	xearth-1.1
CATEGORIES=	astro x11
MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/}

MAINTAINER=	Paul Janzen <pjanzen@openbsd.org>

PERMIT_PACKAGE_CDROM=   Cannot sell
PERMIT_PACKAGE_FTP=     Yes

REVISION =	3
WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xt c m

CONFIGURE_STYLE= imake

USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
