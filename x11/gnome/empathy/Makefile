# $OpenBSD: Makefile,v 1.136 2013/09/09 14:48:55 ajacoutot Exp $

COMMENT= 		Telepathy based messenger for GNOME

GNOME_PROJECT=		empathy
GNOME_VERSION=		3.8.4
SUBST_VARS=		GNOME_VERSION

CATEGORIES=		net

HOMEPAGE=		http://live.gnome.org/Empathy

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL FLAC GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xt Xtst atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += canberra canberra-gtk3 champlain-0.12 champlain-gtk-0.12
WANTLIB += clutter-1.0 clutter-gst-2.0 clutter-gtk-1.0 cogl cogl-pango
WANTLIB += dbus-1 dbus-glib-1 enchant execinfo expat farstream-0.2
WANTLIB += ffi folks folks-telepathy fontconfig freetype gailutil-3
WANTLIB += gck-1 gcr-3 gcr-base-3 gcrypt gdbm gdk-3 gdk_pixbuf-2.0
WANTLIB += gee-0.8 geoclue gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls goa-1.0
WANTLIB += gobject-2.0 gpg-error graphite2 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += harfbuzz-icu hogweed icudata icui18n icuuc javascriptcoregtk-3.0
WANTLIB += jpeg json-c json-glib-1.0 ltdl m memphis-0.2 mission-control-plugins
WANTLIB += nettle notify ogg orc-0.4 p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += pulse pulse-mainloop-glib secret-1 sndfile soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 stdc++ tasn1 telepathy-farstream
WANTLIB += telepathy-glib telepathy-logger vorbis vorbisenc vorbisfile
WANTLIB += webkitgtk-3.0 webp xcb xcb-render xcb-shm xml2 xslt
WANTLIB += z zeitgeist-1.0

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

MODPY_RUNDEP=		No

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			audio/pulseaudio \
			devel/libnotify \
			geo/geoclue \
			geo/libchamplain \
			graphics/clutter/clutter-gst \
			net/telepathy/folks \
			net/telepathy/telepathy-farstream \
			net/telepathy/telepathy-logger \
			net/telepathy/telepathy-mission-control \
			security/gnutls \
			textproc/enchant \
			x11/gnome/gcr \
			x11/gnome/online-accounts

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes \
			net/telepathy/telepathy-gabble \
			net/telepathy/telepathy-idle \
			net/telepathy/telepathy-salut \
			x11/gnome/contacts

# gst-pulse (src/empathy-audio-sink.c)
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-good,-pulse

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS= 	yelp

CONFIGURE_ARGS+=	--disable-gudev \
			--disable-Werror \
			--without-cheese

# XXX needs geocode-glib
CONFIGURE_ARGS +=	--disable-geocode

# XXX needs signond, libsignon-glib
CONFIGURE_ARGS +=	--disable-ubuntu-online-accounts

# needs connman or network-manager
CONFIGURE_ARGS+=	--without-connectivity

post-install:
	rm ${PREFIX}/lib/mission-control-plugins.0/*.{a,la}

.include <bsd.port.mk>
