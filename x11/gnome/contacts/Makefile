# $OpenBSD: Makefile,v 1.9 2012/03/29 09:00:14 ajacoutot Exp $

COMMENT=		contacts manager for GNOME

GNOME_PROJECT=		gnome-contacts
GNOME_VERSION=		3.4.0

CATEGORIES=		productivity

# GPLv2+
PERMIT_PACKAGE_CDROM= 	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm asn1 atk-1.0 c cairo
WANTLIB += cairo-gobject camel-1.2 com_err crypto dbus-1 dbus-glib-1
WANTLIB += drm ebook-1.2 edataserver-1.2 expat ffi folks folks-eds
WANTLIB += folks-telepathy fontconfig freetype gconf-2 gdk-3 gdk_pixbuf-2.0
WANTLIB += gee gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3 goa-1.0
WANTLIB += gobject-2.0 gssapi gthread-2.0 gtk-3 krb5 m notify
WANTLIB += nspr4 nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 plc4 plds4 png pthread pthread-stubs smime3
WANTLIB += softokn3 soup-2.4 sqlite3 ssl3 stdc++ telepathy-glib xcb
WANTLIB += xcb-render xcb-shm xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

LIB_DEPENDS=		net/telepathy/folks \
			x11/gnome/desktop

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_TOOLS= 	vala

.include <bsd.port.mk>
