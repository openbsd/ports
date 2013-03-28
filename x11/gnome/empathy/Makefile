# $OpenBSD: Makefile,v 1.119 2013/03/28 21:32:03 jasper Exp $

COMMENT= 		Telepathy based messenger for GNOME

GNOME_PROJECT=		empathy
GNOME_VERSION=		3.6.4
REVISION=		1
CATEGORIES=		net

HOMEPAGE=		http://live.gnome.org/Empathy

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject canberra
WANTLIB += canberra-gtk3 champlain-0.12 champlain-gtk-0.12 clutter-1.0
WANTLIB += clutter-gst-2.0 clutter-gtk-1.0 cogl cogl-pango dbus-1
WANTLIB += dbus-glib-1 enchant execinfo expat farstream-0.2
WANTLIB += ffi folks folks-telepathy fontconfig freetype gailutil-3
WANTLIB += gck-1 gcr-3 gcr-base-3 gcrypt gdbm gdk-3 gdk_pixbuf-2.0
WANTLIB += gee geoclue gio-2.0 glib-2.0 gmodule-2.0 gmp gnome-keyring
WANTLIB += gnutls goa-1.0 gobject-2.0 gpg-error gstapp-0.10 gstaudio-0.10
WANTLIB += gstaudio-1.0 gstbase-0.10 gstbase-1.0 gstfft-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstreamer-0.10 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-0.10 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += hogweed icudata icui18n icule icuuc javascriptcoregtk-3.0
WANTLIB += jpeg json json-glib-1.0 ltdl m memphis-0.2 mission-control-plugins
WANTLIB += nettle notify ogg orc-0.4 p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += pulse pulse-mainloop-glib secret-1 sndfile soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 stdc++ tasn1 telepathy-farstream
WANTLIB += telepathy-glib telepathy-logger vorbis vorbisfile webkitgtk-3.0
WANTLIB += xcb xcb-render xcb-shm xml2 xslt z zeitgeist-1.0
WANTLIB += X11-xcb Xtst
WANTLIB += FLAC graphite2 vorbisenc

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes \
			x11/gnome/nautilus-sendto
LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			audio/pulseaudio>=2.1 \
			geo/geoclue \
			geo/libchamplain>=0.12.2 \
			graphics/clutter/clutter-gst>=1.9.92 \
			net/telepathy/folks \
			net/telepathy/telepathy-farstream>=0.6.0 \
			net/telepathy/telepathy-logger \
			textproc/enchant \
			x11/gnome/gcr \
			x11/gnome/online-accounts
RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes \
			net/telepathy/telepathy-mission-control \
			net/telepathy/telepathy-gabble \
			net/telepathy/telepathy-idle \
			net/telepathy/telepathy-salut \
			x11/gnome/contacts \
			x11/gnome/icon-theme

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

# needs connman or network-manager
CONFIGURE_ARGS+=	--without-connectivity

post-install:
	rm ${PREFIX}/lib/mission-control-plugins.0/*.{a,la}
	rm ${PREFIX}/lib/nautilus-sendto/plugins/*.{a,la}

.include <bsd.port.mk>
