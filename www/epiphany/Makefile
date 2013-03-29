# $OpenBSD: Makefile,v 1.89 2013/03/29 15:29:28 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME web browser based on webkit

GNOME_PROJECT=	epiphany
GNOME_VERSION=	3.4.3
REVISION=	6

# NOTE: when M changes, increment M accordingly
M=		${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=	M

CATEGORIES=	www
USE_GROFF =	Yes

HOMEPAGE=	http://projects.gnome.org/epiphany/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += avahi-client avahi-common avahi-glib avahi-gobject
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 drm enchant
WANTLIB += execinfo expat ffi fontconfig freetype gailutil-3 gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 geoclue gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnome-keyring gobject-2.0 gpg-error
WANTLIB += gstapp-0.10 gstaudio-0.10 gstbase-0.10 gstfft-0.10
WANTLIB += gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10
WANTLIB += gthread-2.0 gtk-3 icudata icui18n icuuc javascriptcoregtk-3.0
WANTLIB += jpeg m notify orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 stdc++ webkitgtk-3.0 xcb xcb-render
WANTLIB += atk-bridge-2.0 atspi harfbuzz icule
WANTLIB += xcb-shm xml2 xslt z girepository-1.0

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas
LIB_DEPENDS=	textproc/libxslt \
		devel/gobject-introspection \
		devel/libexecinfo \
		devel/libnotify \
		devel/libsoup,-gnome \
		www/webkit,gtk3

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer-0.10/plugins-ffmpeg \
		multimedia/gstreamer-0.10/plugins-good

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

LIBTOOL_FLAGS=		--tag=disable-static

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_TOOLS=		goi yelp

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static \
		--disable-nss \
		--with-distributor-name="OpenBSD ports"

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

.include <bsd.port.mk>
