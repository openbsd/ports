# $OpenBSD: Makefile,v 1.21 2010/07/30 06:58:59 ajacoutot Exp $

COMMENT=	real-time magnifying glass for X11

DISTNAME=	lupe008c
PKGNAME=	lupe-0.08
REVISION=	0

CATEGORIES=	x11

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.oersted.co.jp/~yav/soft/

# License: PD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m 

USE_X11=	Yes

CONFIGURE_STYLE=imake
XMKMF=		xmkmf

WRKDIST=	${WRKDIR}/lupe

NO_REGRESS=	Yes

.include <bsd.port.mk>
