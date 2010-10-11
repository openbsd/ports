# $OpenBSD: Makefile,v 1.14 2010/10/11 08:14:08 jasper Exp $

COMMENT=		library to provide a Gtk+ widget to display maps

DISTNAME=		libchamplain-${VERSION}
REVISION=	0

SHARED_LIBS +=  champlain-0.8       0.0          # 1.2
SHARED_LIBS +=  champlain-gtk-0.8   0.0          # 1.2

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += cairo clutter-glx-1.0 dbus-1 drm expat
WANTLIB += fontconfig freetype gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring gnutls
WANTLIB += gobject-2.0 gpg-error gthread-2.0 gtk-x11-2.0 json-glib-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png proxy pthread-stubs soup-2.4 tasn1 xcb xml2 z
WANTLIB += sqlite3 soup-gnome-2.4 clutter-gtk-0.10
WANTLIB += xcb-render xcb-render-util

MODULES=		devel/gettext

LIB_DEPENDS=		::databases/sqlite3 \
			::devel/libsoup,-gnome \
			:clutter-gtk->=0.10:graphics/clutter/clutter-gtk

CONFIGURE_ARGS= 	--enable-introspection=no \
			--disable-silent-rules

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/demos/launcher-gtk \
		${PREFIX}/bin/libchamplain-demo
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libchamplain/
	${INSTALL_DATA} ${WRKSRC}/demos/*.c \
		${PREFIX}/share/examples/libchamplain/

.include <bsd.port.mk>
