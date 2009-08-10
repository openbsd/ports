# $OpenBSD: Makefile,v 1.24 2009/08/10 06:31:43 kili Exp $

COMMENT=	X11 frontend for GNU Chess and the Internet Chess Server

DISTNAME=	xboard-4.2.7
PKGNAME=	${DISTNAME}p1
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_GNU:=xboard/}

HOMEPAGE=	http://www.tim-mann.org/xboard.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xaw Xext Xmu Xpm Xt c m pthread-stubs xcb

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
ALL_TARGET=		default

.include <bsd.port.mk>
