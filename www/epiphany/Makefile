# $OpenBSD: Makefile,v 1.92 2013/04/13 09:27:34 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME web browser based on webkit

GNOME_PROJECT=	epiphany
GNOME_VERSION=	3.4.3
REVISION=	8

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

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi avahi-client avahi-common avahi-glib avahi-gobject
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 enchant execinfo
WANTLIB += expat ffi fontconfig freetype gailutil-3 gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 geoclue gio-2.0 girepository-1.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error graphite2 gstapp-0.10
WANTLIB += gstaudio-0.10 gstbase-0.10 gstfft-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10 gthread-2.0
WANTLIB += gtk-3 harfbuzz icudata icui18n icule icuuc javascriptcoregtk-3.0
WANTLIB += jpeg m notify orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 stdc++ webkitgtk-3.0 xcb xcb-render xcb-shm
WANTLIB += xml2 xslt z gnome-keyring

BUILD_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

RUN_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

LIB_DEPENDS=	textproc/libxslt \
		devel/gobject-introspection \
		devel/libexecinfo \
		devel/libnotify \
		devel/libsoup,-gnome \
		www/webkit,gtk3 \
		x11/gnome/libgnome-keyring

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-libav \
		multimedia/gstreamer1/plugins-good

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
