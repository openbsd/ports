# $OpenBSD: Makefile,v 1.17 2013/03/11 11:46:16 espie Exp $

COMMENT=	window manager improved - key driven window manager

DISTNAME=	wmi-10
REVISION=	4
CATEGORIES=	x11

HOMEPAGE=	http://wmi.suckless.org/

MAINTAINER=	Julian Frede <julian.frede@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xft Xrender c expat fontconfig
WANTLIB += freetype m stdc++ z pthread-stubs xcb

MASTER_SITES=	http://code.suckless.org/dl/misc/

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
USE_GROFF =	Yes

.include <bsd.port.mk>
