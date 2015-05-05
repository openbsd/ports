# $OpenBSD: Makefile,v 1.44 2015/05/05 17:00:20 sthen Exp $

COMMENT=		OpenGL widget for GTK+2 GUI toolkit

GNOME_PROJECT=		gtkglarea
GNOME_VERSION=		2.0.1
REVISION=		4

SHARED_LIBS +=  gtkgl-2.0      0.0               # .1.1

CATEGORIES=		x11 graphics

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL GLU X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += xcb xcb-shm z

EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext \
			x11/gnome

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
