# $OpenBSD: Makefile,v 1.17 2007/09/20 15:22:30 steven Exp $

COMMENT=	set the root window to the image of earth
DISTNAME=	xearth-1.1
PKGNAME=	${DISTNAME}p0
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
