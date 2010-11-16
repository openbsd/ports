# $OpenBSD: Makefile,v 1.27 2010/11/16 11:23:28 espie Exp $

COMMENT=	X11 frontend for GNU Chess and the Internet Chess Server

DISTNAME=	xboard-4.2.7
REVISION =	1
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_GNU:=xboard/}

HOMEPAGE=	http://www.tim-mann.org/xboard.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xaw Xext Xmu Xpm Xt c m pthread-stubs xcb

USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
ALL_TARGET=		default

.include <bsd.port.mk>
