# $OpenBSD: Makefile,v 1.30 2019/07/14 00:39:34 naddy Exp $

COMMENT=	set the root window to the moon in its current phase
DISTNAME=	xphoon-20000613
REVISION=	1
CATEGORIES=	astro x11

HOMEPAGE=	http://xphoon.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xphoon/}

# BSD like
PERMIT_PACKAGE=     Yes

WANTLIB=	X11 Xau Xdmcp Xext c m

CONFIGURE_STYLE= imake

NO_TEST=	Yes

.include <bsd.port.mk>
