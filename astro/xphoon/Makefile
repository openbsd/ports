# $OpenBSD: Makefile,v 1.29 2014/11/18 10:17:18 brad Exp $

COMMENT=	set the root window to the moon in its current phase
DISTNAME=	xphoon-20000613
REVISION=	1
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
