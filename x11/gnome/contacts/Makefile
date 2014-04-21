# $OpenBSD: Makefile,v 1.38 2014/04/21 14:14:53 ajacoutot Exp $

COMMENT=		contacts manager for GNOME

GNOME_PROJECT=		gnome-contacts
GNOME_VERSION=		3.12.0
REVISION=		0

CATEGORIES=		productivity

# GPLv2+
PERMIT_PACKAGE_CDROM= 	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject camel-1.2 db dbus-1 dbus-glib-1
WANTLIB += ebackend-1.2 ebook-1.2 ebook-contacts-1.2 edata-book-1.2
WANTLIB += edataserver-1.2 expat ffi folks folks-eds folks-telepathy
WANTLIB += fontconfig freetype gck-1 gcr-base-3 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gee-0.8 gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += goa-1.0 gobject-2.0 gpg-error graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz icudata icui18n icuuc m notify nspr4
WANTLIB += nss3 nssutil3 p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += secret-1 smime3 softokn3 soup-2.4 sqlite3 ssl3 telepathy-glib
WANTLIB += xcb xcb-render xcb-shm xml2 z zeitgeist-2.0

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

LIB_DEPENDS=		devel/libnotify \
			net/telepathy/folks \
			x11/gnome/desktop

MODGNOME_TOOLS += desktop-file-utils gobject-introspection vala

# Re-generate C files from vala sources to ensure HAVE_CHEESE is honoured.
post-configure:
	rm ${WRKSRC}/src/{contacts-avatar-dialog,main}.c
	cd ${WRKSRC}/src && ${MAKE_PROGRAM} main.c

.include <bsd.port.mk>
