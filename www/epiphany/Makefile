# $OpenBSD: Makefile,v 1.115 2014/04/02 09:36:12 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME web browser based on webkit

GNOME_PROJECT=	epiphany
GNOME_VERSION=	3.12.0
REVISION=	2

CATEGORIES=	www

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 X11-xcb XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0
WANTLIB += atk-bridge-2.0 atspi avahi-client avahi-common avahi-glib
WANTLIB += avahi-gobject c cairo cairo-gobject dbus-1 dbus-glib-1
WANTLIB += enchant execinfo expat ffi fontconfig freetype
WANTLIB += gck-1 gcr-3 gcr-base-3 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += geoclue gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += gobject-2.0 gpg-error graphite2 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += icui18n javascriptcoregtk-3.0 jpeg orc-0.4 EGL harfbuzz-icu
WANTLIB += m notify p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs secret-1 soup-2.4
WANTLIB += sqlite3 startup-notification-1 stdc++ webkit2gtk-3.0
WANTLIB += webp wnck-3 xcb xcb-aux xcb-render xcb-shm
WANTLIB += xml2 xslt z icudata icuuc

BUILD_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

RUN_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

LIB_DEPENDS=	textproc/libxslt \
		devel/libexecinfo \
		devel/libnotify \
		devel/libwnck3 \
		devel/startup-notification \
		net/avahi \
		www/webkit,gtk3 \
		x11/gnome/desktop \
		x11/gnome/gcr

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-libav

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

MODGNOME_TOOLS += desktop-file-utils yelp

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-nss \
		--with-distributor-name="OpenBSD ports"

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

TEST_DEPENDS=		${BASE_PKGPATH}
TEST_IS_INTERACTIVE=	x11
PORTHOME=		${WRKDIR}

post-install:
	rm ${PREFIX}/lib/epiphany/3.12/web-extensions/*.{a,la}

.include <bsd.port.mk>
