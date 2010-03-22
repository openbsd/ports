# $OpenBSD: Makefile,v 1.10 2010/03/22 17:46:26 jasper Exp $

COMMENT=		library to provide a Gtk+ widget to display maps

DISTNAME=		libchamplain-${VERSION}

SHARED_LIBS +=  champlain-0.4       0.2          # .0.0
SHARED_LIBS +=  champlain-gtk-0.4   0.1          # .0.0

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += cairo clutter-glx-1.0 dbus-1 dbus-glib-1 drm expat
WANTLIB += fontconfig freetype gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gnome-keyring gnutls
WANTLIB += gobject-2.0 gpg-error gthread-2.0 gtk-x11-2.0 json-glib-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png proxy pthread-stubs tasn1 xcb xml2 z

MODULES=		devel/gettext

LIB_DEPENDS=		sqlite3::databases/sqlite3 \
			soup-2.4,soup-gnome-2.4::devel/libsoup,-gnome \
			clutter-gtk-0.10:clutter-gtk->=0.10:graphics/clutter/clutter-gtk

CONFIGURE_ARGS=	--enable-introspection=no

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/demos/launcher-gtk \
		${PREFIX}/bin/libchamplain-demo
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libchamplain/
	${INSTALL_DATA} ${WRKSRC}/demos/*.c \
		${PREFIX}/share/examples/libchamplain/

.include <bsd.port.mk>
