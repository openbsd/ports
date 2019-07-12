# $OpenBSD: Makefile,v 1.30 2019/07/12 20:51:13 sthen Exp $

COMMENT=	OpenGL extension to GTK+ 2.0 and later

DISTNAME=	gtkglext-1.2.0
REVISION=	16

CATEGORIES=	x11 graphics devel

SHARED_LIBS +=  gdkglext-x11-1.0     0.0      # 0.0
SHARED_LIBS +=  gtkglext-x11-1.0     0.0      # 0.0

HOMEPAGE=	http://projects.gnome.org/gtkglext/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# GPLv2,  LGPLv2.1
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtkglext/}

WANTLIB += GL GLU ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm
WANTLIB += atk-1.0 cairo drm expat ffi fontconfig freetype fribidi
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangox-1.0 pcre pixman-1 png pthread xcb xcb-dri2 xcb-glx
WANTLIB += xcb-render xcb-shm z

LIB_DEPENDS=	x11/gtk+2 \
		devel/pangox-compat

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gtkglext
	${INSTALL_DATA} ${WRKSRC}/examples/*.{c,h,lwo,rgb} \
		${PREFIX}/share/examples/gtkglext

.include <bsd.port.mk>
