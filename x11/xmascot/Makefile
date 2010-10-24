# $OpenBSD: Makefile,v 1.23 2010/10/24 21:15:36 ajacoutot Exp $

COMMENT=	moving mascot on your X11 screen

DISTNAME=	xmascot2.6a
PKGNAME=	xmascot-2.6a
REVISION=	1
CATEGORIES=	x11

HOMEPAGE=	http://cclub-flying.dsl.gr.jp/products/xmascot/

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license

WANTLIB=	ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c m 

MASTER_SITES=	${HOMEPAGE}

USE_GROFF =	Yes
CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
