# $OpenBSD: Makefile,v 1.22 2011/11/03 17:35:12 jasper Exp $

# XXX fix building with glib2 >= 2.29 (G_CONST_RETURN is deprecated)
CFLAGS +=		"-DG_CONST_RETURN=const"

COMMENT=		library to provide a Gtk+ widget to display maps

DISTNAME=		libchamplain-${VERSION}
REVISION=		4

SHARED_LIBS +=  champlain-0.8       0.0          # 1.2
SHARED_LIBS +=  champlain-gtk-0.8   0.0          # 1.2

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo clutter-glx-1.0
WANTLIB += clutter-gtk-0.10 dbus-1 drm expat fontconfig freetype
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-keyring gobject-2.0 gpg-error gthread-2.0
WANTLIB += gtk-x11-2.0 json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 xcb xcb-render xcb-shm xml2
WANTLIB += z ffi stdc++

MODULES=		devel/gettext

BUILD_DEPENDS=          devel/gobject-introspection
LIB_DEPENDS=		databases/sqlite3 \
			devel/libsoup,-gnome \
			graphics/clutter/clutter-gtk>=0.10

CONFIGURE_ARGS= 	--enable-introspection

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/demos/launcher-gtk \
		${PREFIX}/bin/libchamplain-demo
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libchamplain/
	${INSTALL_DATA} ${WRKSRC}/demos/*.c \
		${PREFIX}/share/examples/libchamplain/

.include <bsd.port.mk>
