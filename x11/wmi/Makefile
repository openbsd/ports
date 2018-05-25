# $OpenBSD: Makefile,v 1.24 2018/05/25 13:01:41 espie Exp $

COMMENT=	window manager improved - key driven window manager

DISTNAME=	wmi-10
REVISION =	8
CATEGORIES=	x11

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xft c m ${COMPILER_LIBCXX}

MASTER_SITES=	http://dl.suckless.org/misc/

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
