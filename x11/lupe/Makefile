# $OpenBSD: Makefile,v 1.27 2017/11/08 21:42:46 fcambus Exp $

COMMENT=	real-time magnifying glass for X11

DISTNAME=	lupe008c
PKGNAME=	lupe-0.08
REVISION=	2

CATEGORIES=	x11

MASTER_SITES=	http://www2s.biglobe.ne.jp/~yav/soft/

HOMEPAGE=	http://www2s.biglobe.ne.jp/~yav/soft/indexe.html

# License: PD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m


CONFIGURE_STYLE=imake
XMKMF=		xmkmf

WRKDIST=	${WRKDIR}/lupe

NO_TEST=	Yes

.include <bsd.port.mk>
