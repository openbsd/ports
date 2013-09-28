# $OpenBSD: Makefile,v 1.42 2013/09/28 08:50:34 ajacoutot Exp $

COMMENT=		OpenGL widget for GTK+2 GUI toolkit

GNOME_PROJECT=		gtkglarea
GNOME_VERSION=		2.0.1
REVISION=		2

SHARED_LIBS +=  gtkgl-2.0      0.0               # .1.1

CATEGORIES=		x11 graphics

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += GL GLU X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo expat
WANTLIB += fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb z gdk_pixbuf-2.0
WANTLIB += gdk-x11-2.0 gtk-x11-2.0

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
