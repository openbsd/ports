# $OpenBSD: Makefile,v 1.125 2015/04/15 09:40:52 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME web browser based on webkit

GNOME_PROJECT=	epiphany
GNOME_VERSION=	3.16.0
MAJOR_V=	${GNOME_VERSION:R}
SUBST_VARS=	MAJOR_V
REVISION=	1

CATEGORIES=	www

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb XRes Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xt Xxf86vm atk-1.0 atk-bridge-2.0 atspi avahi-client
WANTLIB += avahi-common avahi-glib avahi-gobject c cairo cairo-gobject
WANTLIB += dbus-1 drm enchant estdc++ execinfo expat ffi fontconfig
WANTLIB += freetype gbm gck-1 gcr-base-3 gcr-ui-3 gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += gobject-2.0 gpg-error graphite2 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += harfbuzz-icu icudata icui18n icuuc javascriptcoregtk-4.0
WANTLIB += jpeg lzma m notify orc-0.4 p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += secret-1 soup-2.4 sqlite3 startup-notification-1 stdc++
WANTLIB += webkit2gtk-4.0 webp wnck-3 xcb xcb-dri2 xcb-glx xcb-render
WANTLIB += xcb-shape xcb-shm xcb-util xcb-xfixes xml2 xslt z
WANTLIB += epoxy gmp gnutls hogweed nettle tasn1

BUILD_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

RUN_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

LIB_DEPENDS=	devel/libexecinfo \
		devel/libnotify \
		devel/libwnck3 \
		devel/startup-notification \
		multimedia/gstreamer1/plugins-base \
		net/avahi \
		www/webkitgtk4 \
		x11/gnome/desktop \
		x11/gnome/gcr

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-libav

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

MODGNOME_TOOLS=	desktop-file-utils yelp

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-nss \
		--with-distributor-name="OpenBSD ports"

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

TEST_DEPENDS=		${BASE_PKGPATH}
TEST_IS_INTERACTIVE=	x11
PORTHOME=		${WRKDIR}

post-install:
	rm ${PREFIX}/lib/epiphany/${MAJOR_V}/web-extensions/*.{a,la}

.include <bsd.port.mk>
