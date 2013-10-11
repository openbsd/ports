# $OpenBSD: Makefile,v 1.15 2013/10/11 20:39:55 naddy Exp $

COMMENT=	hides idle X11 cursor

DISTNAME=	unclutter-8
REVISION=	1
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=utilities/}
EXTRACT_SUFX=	.tar.Z

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c

USE_GROFF =	Yes

WRKDIST=	${WRKDIR}/unclutter
CONFIGURE_STYLE=imake

NO_TEST=	Yes

.include <bsd.port.mk>
