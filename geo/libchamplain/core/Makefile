# $OpenBSD: Makefile,v 1.24 2012/07/07 12:59:33 jasper Exp $

COMMENT=		library to provide a GTK+ widget to display maps

DISTNAME=		libchamplain-${VERSION}

SHARED_LIBS +=  champlain-0.12       0.0      # 1.1
SHARED_LIBS +=  champlain-gtk-0.12   0.0      # 1.1

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += clutter-1.0 clutter-gtk-1.0 cogl cogl-pango dbus-1
WANTLIB += drm expat ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring gobject-2.0
WANTLIB += gpg-error gthread-2.0 gtk-3 json-glib-1.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += soup-2.4 soup-gnome-2.4 sqlite3 stdc++ xcb xcb-render
WANTLIB += xcb-shm xml2 z

MODULES=		devel/gettext

BUILD_DEPENDS=          devel/gobject-introspection
LIB_DEPENDS=		devel/libsoup,-gnome \
			graphics/clutter/clutter-gtk>=1.2.0

CONFIGURE_ARGS= 	--enable-introspection \
			--disable-vala

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/demos/launcher-gtk \
		${PREFIX}/bin/libchamplain-demo
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libchamplain/
	${INSTALL_DATA} ${WRKSRC}/demos/*.c \
		${PREFIX}/share/examples/libchamplain/

.include <bsd.port.mk>
