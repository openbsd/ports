# $OpenBSD: Makefile,v 1.49 2015/04/25 10:48:52 jasper Exp $

COMMENT=		contacts manager for GNOME

GNOME_PROJECT=		gnome-contacts
GNOME_VERSION=		3.16.2

CATEGORIES=		productivity

# GPLv2+
PERMIT_PACKAGE_CDROM= 	Yes

WANTLIB += EGL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject camel-1.2
WANTLIB += db dbus-1 dbus-glib-1 drm ebackend-1.2 ebook-1.2 ebook-contacts-1.2
WANTLIB += edata-book-1.2 edataserver-1.2 edataserverui-1.2 epoxy
WANTLIB += expat ffi folks folks-eds folks-telepathy fontconfig
WANTLIB += freetype gbm gck-1 gcr-base-3 gcr-ui-3 gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gee-0.8 geocode-glib gio-2.0 glapi glib-2.0
WANTLIB += gmodule-2.0 gnome-desktop-3 goa-1.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz icudata icui18n
WANTLIB += icuuc json-glib-1.0 lzma m notify nspr4 nss3 nssutil3
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 plc4 plds4 png pthread pthread-stubs secret-1
WANTLIB += smime3 softokn3 soup-2.4 sqlite3 ssl3 telepathy-glib
WANTLIB += xcb xcb-dri2 xcb-render xcb-shape xcb-shm xcb-xfixes
WANTLIB += xml2 z zeitgeist-2.0 cogl-path
WANTLIB += champlain-0.12 clutter-1.0 clutter-gtk-1.0 cogl cogl-pango

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

LIB_DEPENDS=		devel/libnotify \
			geo/libchamplain \
			net/telepathy/folks \
			x11/gnome/desktop

MODGNOME_TOOLS=		desktop-file-utils docbook \
			gobject-introspection vala

# Re-generate C files from vala sources to ensure HAVE_CHEESE is honoured.
post-configure:
	rm ${WRKSRC}/src/{contacts-avatar-dialog,main}.c
	cd ${WRKSRC}/src && ${MAKE_PROGRAM} main.c

.include <bsd.port.mk>
