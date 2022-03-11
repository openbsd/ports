COMMENT=	window manager improved - key driven window manager

DISTNAME=	wmi-10
REVISION =	11
CATEGORIES=	x11

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xft c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	https://dl.suckless.org/misc/

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
