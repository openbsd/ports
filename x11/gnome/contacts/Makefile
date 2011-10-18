# $OpenBSD: Makefile,v 1.4 2011/10/18 14:23:14 jasper Exp $

COMMENT=		contacts manager for GNOME

GNOME_PROJECT=		gnome-contacts
GNOME_VERSION=		3.2.1

CATEGORIES=		productivity

# GPLv2+
PERMIT_PACKAGE_CDROM= 	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm asn1
WANTLIB += atk-1.0 c cairo cairo-gobject camel-1.2 com_err crypto
WANTLIB += dbus-1 dbus-glib-1 drm ebook-1.2 edataserver-1.2 expat
WANTLIB += ffi folks folks-telepathy fontconfig freetype gconf-2
WANTLIB += gdk-3 gdk_pixbuf-2.0 gee gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-desktop-3 goa-1.0 gobject-2.0 gssapi gthread-2.0
WANTLIB += gtk-3 krb5 m notify nspr4 nss3 nssutil3 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png pthread pthread-stubs smime3 softokn3 soup-2.4
WANTLIB += sqlite3 ssl3 telepathy-glib xcb xcb-render xcb-shm
WANTLIB += xml2 z

LIB_DEPENDS=		net/telepathy/folks>=0.6.3.2p0 \
			x11/gnome/desktop

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_TOOLS= 	vala

.include <bsd.port.mk>
