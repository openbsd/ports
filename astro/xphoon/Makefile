# $OpenBSD: Makefile,v 1.20 2007/12/18 09:37:16 ajacoutot Exp $

COMMENT=	set the root window to the moon in its current phase
DISTNAME=	xphoon
PKGNAME=	xphoon-91.9.18p2
CATEGORIES=	astro x11

HOMEPAGE=	http://xphoon.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
EXTRACT_SUFX=	.tar.Z

# BSD like
PERMIT_PACKAGE_CDROM=   Cannot sell
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Cannot sell
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	X11 Xau Xdmcp Xext c m

CONFIGURE_STYLE= imake

USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
