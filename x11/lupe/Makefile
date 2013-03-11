# $OpenBSD: Makefile,v 1.24 2013/03/11 11:46:14 espie Exp $

COMMENT=	real-time magnifying glass for X11

DISTNAME=	lupe008c
PKGNAME=	lupe-0.08
REVISION=	0

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
