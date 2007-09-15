# $OpenBSD: Makefile,v 1.16 2007/09/15 10:37:22 ajacoutot Exp $

COMMENT=	set the root window to the image of earth
DISTNAME=	xearth-1.1
CATEGORIES=	astro x11
MASTER_SITES=	ftp://cag.lcs.mit.edu/pub/tuna/

MAINTAINER=	Paul Janzen <pjanzen@openbsd.org>

PERMIT_PACKAGE_CDROM=   Cannot sell
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Cannot sell
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		ICE SM X11 Xext Xt c m

CONFIGURE_STYLE= imake

USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
