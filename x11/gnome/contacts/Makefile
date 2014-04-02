# $OpenBSD: Makefile,v 1.37 2014/04/02 09:36:12 jasper Exp $

COMMENT=		contacts manager for GNOME

GNOME_PROJECT=		gnome-contacts
GNOME_VERSION=		3.12.0

CATEGORIES=		productivity

# GPLv2+
PERMIT_PACKAGE_CDROM= 	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender asn1 atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject camel-1.2 com_err crypto
WANTLIB += db dbus-1 dbus-glib-1 ebackend-1.2 ebook-1.2 ebook-contacts-1.2
WANTLIB += edata-book-1.2 edataserver-1.2 expat ffi folks folks-eds
WANTLIB += folks-telepathy fontconfig freetype gck-1 gcr-base-3
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-desktop-3 goa-1.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gssapi gthread-2.0 gtk-3 harfbuzz heimbase
WANTLIB += krb5 m notify nspr4 nss3 nssutil3 p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png pthread pthread-stubs roken secret-1 smime3 softokn3
WANTLIB += soup-2.4 sqlite3 ssl3 telepathy-glib wind xcb xcb-render
WANTLIB += xcb-shm xml2 z zeitgeist-2.0 icudata icui18n icuuc

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

LIB_DEPENDS=		devel/libnotify \
			net/telepathy/folks>=0.9.5 \
			x11/gnome/desktop

MODGNOME_TOOLS += desktop-file-utils gobject-introspection vala

# Re-generate C files from vala sources to ensure HAVE_CHEESE is honoured.
post-configure:
	rm ${WRKSRC}/src/{contacts-avatar-dialog,main}.c
	cd ${WRKSRC}/src && ${MAKE_PROGRAM} main.c

.include <bsd.port.mk>
