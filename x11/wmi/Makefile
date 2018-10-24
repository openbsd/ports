# $OpenBSD: Makefile,v 1.25 2018/10/24 14:28:13 sthen Exp $

COMMENT=	window manager improved - key driven window manager

DISTNAME=	wmi-10
REVISION =	9
CATEGORIES=	x11

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xft c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	http://dl.suckless.org/misc/

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
