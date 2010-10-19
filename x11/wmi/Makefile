# $OpenBSD: Makefile,v 1.13 2010/10/19 08:14:00 espie Exp $

COMMENT=	window manager improved - key driven window manager

DISTNAME=	wmi-10
REVISION=	4
CATEGORIES=	x11

HOMEPAGE=	http://wmi.suckless.org/

MAINTAINER=	Julian Frede <julian.frede@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xft Xrender c expat fontconfig
WANTLIB += freetype m stdc++ z pthread-stubs xcb

MASTER_SITES=	http://code.suckless.org/dl/misc/

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig"
USE_X11=	Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
