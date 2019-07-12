# $OpenBSD: Makefile,v 1.28 2019/07/12 20:51:15 sthen Exp $

COMMENT=	real-time magnifying glass for X11

DISTNAME=	lupe008c
PKGNAME=	lupe-0.08
REVISION=	2

CATEGORIES=	x11

MASTER_SITES=	http://www2s.biglobe.ne.jp/~yav/soft/

HOMEPAGE=	http://www2s.biglobe.ne.jp/~yav/soft/indexe.html

# License: PD
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m


CONFIGURE_STYLE=imake
XMKMF=		xmkmf

WRKDIST=	${WRKDIR}/lupe

NO_TEST=	Yes

.include <bsd.port.mk>
