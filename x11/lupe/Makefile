# $OpenBSD: Makefile,v 1.25 2013/10/11 20:39:51 naddy Exp $

COMMENT=	real-time magnifying glass for X11

DISTNAME=	lupe008c
PKGNAME=	lupe-0.08
REVISION=	1

CATEGORIES=	x11

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.oersted.co.jp/~yav/soft/

# License: PD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m 

USE_GROFF =	Yes

CONFIGURE_STYLE=imake
XMKMF=		xmkmf

WRKDIST=	${WRKDIR}/lupe

NO_TEST=	Yes

.include <bsd.port.mk>
