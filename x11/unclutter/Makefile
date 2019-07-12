# $OpenBSD: Makefile,v 1.17 2019/07/12 20:51:23 sthen Exp $

COMMENT=	hides idle X11 cursor

DISTNAME=	unclutter-8
REVISION=	1
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=utilities/}
EXTRACT_SUFX=	.tar.Z

# Public Domain
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c


WRKDIST=	${WRKDIR}/unclutter
CONFIGURE_STYLE=imake

NO_TEST=	Yes

.include <bsd.port.mk>
