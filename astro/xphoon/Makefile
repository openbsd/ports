# $OpenBSD: Makefile,v 1.28 2013/11/29 20:48:35 naddy Exp $

COMMENT=	set the root window to the moon in its current phase
DISTNAME=	xphoon-20000613
REVISION=	0
CATEGORIES=	astro x11

HOMEPAGE=	http://xphoon.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xphoon/}

# BSD like
PERMIT_PACKAGE_CDROM=   Cannot sell
PERMIT_PACKAGE_FTP=     Yes

WANTLIB=	X11 Xau Xdmcp Xext c m

CONFIGURE_STYLE= imake

NO_TEST=	Yes

.include <bsd.port.mk>
