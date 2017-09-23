# $OpenBSD: Makefile,v 1.63 2017/09/23 11:41:31 sthen Exp $

COMMENT=		contacts manager for GNOME

GNOME_PROJECT=		gnome-contacts
GNOME_VERSION=		3.22.1
REVISION=		3

CATEGORIES=		productivity

# GPLv2+
PERMIT_PACKAGE_CDROM= 	Yes

WANTLIB += EGL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject camel-1.2 champlain-0.12
WANTLIB += clutter-1.0 clutter-gtk-1.0 cogl cogl-pango cogl-path
WANTLIB += db dbus-1 dbus-glib-1 drm ebackend-1.2 ebook-1.2 ebook-contacts-1.2
WANTLIB += edata-book-1.2 edataserver-1.2 edataserverui-1.2 epoxy
WANTLIB += expat ffi folks folks-eds folks-telepathy fontconfig
WANTLIB += freetype gbm gck-1 gcr-base-3 gcr-ui-3 gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gee-0.8 geocode-glib gio-2.0 glapi glib-2.0
WANTLIB += gmodule-2.0 gnome-desktop-3 goa-1.0 gobject-2.0
WANTLIB += gpg-error graphite2 gstaudio-1.0 gstbase-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += iconv icudata icui18n icuuc intl javascriptcoregtk-4.0
WANTLIB += json-glib-1.0 lzma m nspr4 nss3 orc-0.4 p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 png pthread pthread-stubs secret-1 smime3
WANTLIB += softokn3 soup-2.4 sqlite3 ssl3 ${COMPILER_LIBCXX} tasn1 telepathy-glib
WANTLIB += webkit2gtk-4.0 xcb xcb-dri2 xcb-glx xcb-render xcb-shm
WANTLIB += xcb-xfixes xml2 z
WANTLIB += GL GLESv2 Xt enchant gstallocators-1.0 gstapp-1.0 gstbadallocators-1.0
WANTLIB += gstfft-1.0 gstgl-1.0 gstpbutils-1.0 harfbuzz-icu hyphen
WANTLIB += jpeg notify nssutil3 webp xslt

MODULES=		x11/gnome \
			devel/dconf

LIB_DEPENDS=		geo/libchamplain \
			net/telepathy/folks \
			x11/gnome/desktop

MODGNOME_TOOLS=		desktop-file-utils docbook \
			gobject-introspection vala

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
