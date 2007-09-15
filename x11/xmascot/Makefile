# $OpenBSD: Makefile,v 1.18 2007/09/15 20:04:28 merdely Exp $

COMMENT=	moving mascot on your X11 screen

DISTNAME=	xmascot2.6a
PKGNAME=        xmascot-2.6a
CATEGORIES=	x11

HOMEPAGE=	http://cclub-flying.dsl.gr.jp/products/xmascot/

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xp Xpm Xt c m 

MASTER_SITES=	${HOMEPAGE}

USE_X11=		Yes
CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
