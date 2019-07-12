# $OpenBSD: Makefile,v 1.53 2019/07/12 20:51:13 sthen Exp $

COMMENT=		OpenGL widget for GTK+2 GUI toolkit

GNOME_PROJECT=		gtkglarea
GNOME_VERSION=		2.0.1
REVISION=		10

SHARED_LIBS +=  gtkgl-2.0      0.0               # .1.1

CATEGORIES=		x11 graphics

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += GL GLU X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += xcb xcb-shm z
WANTLIB += X11-xcb Xxf86vm drm ffi glapi graphite2 gthread-2.0
WANTLIB += harfbuzz pthread ${COMPILER_LIBCXX} xcb-dri2 xcb-glx xcb-render
WANTLIB += fribidi xcb-dri3 xcb-present xcb-sync xcb-xfixes xshmfence

COMPILER =		base-clang ports-gcc base-gcc

EXTRACT_SUFX=		.tar.bz2

MODULES=		x11/gnome

LIB_DEPENDS=		x11/gtk+2

SEPARATE_BUILD= 	Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-lib-GL

DOC_DIR=		${PREFIX}/share/doc/gtkglarea2

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/docs/HOWTO.txt ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/docs/gdkgl.txt ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/docs/gtkglarea.txt ${DOC_DIR}

.include <bsd.port.mk>
