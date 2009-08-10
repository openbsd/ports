# $OpenBSD: Makefile,v 1.21 2009/08/10 06:29:52 kili Exp $

COMMENT=	set the root window to the moon in its current phase
DISTNAME=	xphoon
PKGNAME=	xphoon-91.9.18p3
CATEGORIES=	astro x11

HOMEPAGE=	http://xphoon.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
EXTRACT_SUFX=	.tar.Z

# BSD like
PERMIT_PACKAGE_CDROM=   Cannot sell
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Cannot sell
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	X11 Xau Xdmcp Xext c m pthread-stubs xcb

CONFIGURE_STYLE= imake

USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
