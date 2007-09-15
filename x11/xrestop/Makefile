# $OpenBSD: Makefile,v 1.5 2007/09/15 20:04:28 merdely Exp $

COMMENT=	top-like X server resources usage display tool
DISTNAME=	xrestop-0.4
CATEGORIES=	x11

HOMEPAGE=	http://www.freedesktop.org/wiki/Software_2fxrestop

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://projects.o-hand.com/sources/xrestop/

WANTLIB=	XRes Xext X11 Xau Xdmcp ncurses c

SEPARATE_BUILD=	concurrent
USE_X11=	Yes	

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS=-I${X11BASE}/include

.include <bsd.port.mk>
