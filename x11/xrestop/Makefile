# $OpenBSD: Makefile,v 1.3 2007/05/08 15:10:15 matthieu Exp $

COMMENT=	"top-like X server resources usage display tool"
DISTNAME=	xrestop-0.3
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11

HOMEPAGE=	http://www.freedesktop.org/wiki/Software_2fxrestop

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.freedesktop.org/software/xrestop/

WANTLIB=	XRes Xext X11 Xau Xdmcp ncurses c

SEPARATE_BUILD=	concurrent
USE_X11=	Yes	

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS=-I${X11BASE}/include

.include <bsd.port.mk>
