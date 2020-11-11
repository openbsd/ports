# $OpenBSD: Makefile,v 1.1.1.1 2020/11/11 09:51:06 ajacoutot Exp $

COMMENT=		deprecated API for integrating Xlib and GdkPixbuf

# https://gitlab.gnome.org/Archive/gdk-pixbuf-xlib/-/commits/master/
DISTNAME=		gdk-pixbuf-xlib-3116b8ae55501cf48d16970aa2b50a5530e15223
PKGNAME=		gdk-pixbuf-xlib-2.40.0

CATEGORIES=		graphics

SHARED_LIBS +=  gdk_pixbuf_xlib-2.0  3200.1   # 0.4000.0

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += X11 gdk_pixbuf-2.0 glib-2.0

MASTER_SITES=		https://distfiles.bsdfrog.org/

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		graphics/gdk-pixbuf2

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
