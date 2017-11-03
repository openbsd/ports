# $OpenBSD: Makefile,v 1.33 2017/11/03 14:29:24 bentley Exp $

COMMENT=	3D Athena Widget set that looks like Motif

PKGNAME=	Xaw3d-1.6.2
DISTNAME=	lib${PKGNAME}

SHARED_LIBS +=	Xaw3d                12.0     # 8.0

CATEGORIES=	x11

MASTER_SITES=	https://xorg.freedesktop.org/archive/individual/lib/

# X11/badly worded
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext Xmu Xt xcb

CONFIGURE_STYLE= gnu
#CONFIGURE_ARGS=	--enable-arrow-scrollbars

NO_TEST=	Yes

.include <bsd.port.mk>
