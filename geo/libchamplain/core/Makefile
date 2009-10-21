# $OpenBSD: Makefile,v 1.9 2009/10/21 12:19:03 landry Exp $

COMMENT=		library to provide a Gtk+ widget to display maps

DISTNAME=		libchamplain-${VERSION}

SHARED_LIBS +=  champlain-0.4       0.1          # .0.0
SHARED_LIBS +=  champlain-gtk-0.4   0.1          # .0.0

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo clutter-glx-1.0
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gnutls gobject-2.0
WANTLIB += gpg-error gthread-2.0 gtk-x11-2.0 json-glib-1.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += tasn1 xcb xml2 z gcrypt Xxf86vm drm

MODULES=		devel/gettext

LIB_DEPENDS=		sqlite3::databases/sqlite3 \
			soup-2.4::devel/libsoup \
			clutter-gtk-0.10:clutter-gtk->=0.10:graphics/clutter/clutter-gtk

CONFIGURE_ARGS=	--enable-introspection=no

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/demos/launcher-gtk \
		${PREFIX}/bin/libchamplain-demo
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libchamplain/
	${INSTALL_DATA} ${WRKSRC}/demos/*.c \
		${PREFIX}/share/examples/libchamplain/

.include <bsd.port.mk>
