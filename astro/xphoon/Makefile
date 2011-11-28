# $OpenBSD: Makefile,v 1.26 2011/11/28 11:16:29 sthen Exp $

COMMENT=	set the root window to the moon in its current phase
DISTNAME=	xphoon-20000613
CATEGORIES=	astro x11

HOMEPAGE=	http://xphoon.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xphoon/}

# BSD like
PERMIT_PACKAGE_CDROM=   Cannot sell
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Cannot sell
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	X11 Xau Xdmcp Xext c m

CONFIGURE_STYLE= imake

USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
