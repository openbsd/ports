# $OpenBSD: Makefile,v 1.14 2013/03/11 11:46:16 espie Exp $

COMMENT=	hides idle X11 cursor

DISTNAME=	unclutter-8
REVISION=	0
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
