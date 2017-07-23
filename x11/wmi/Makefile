# $OpenBSD: Makefile,v 1.22 2017/07/23 09:26:30 espie Exp $

COMMENT=	window manager improved - key driven window manager

DISTNAME=	wmi-10
REVISION =	6
CATEGORIES=	x11

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xft c m ${COMPILER_LIBCXX}

MASTER_SITES=	http://dl.suckless.org/misc/

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
