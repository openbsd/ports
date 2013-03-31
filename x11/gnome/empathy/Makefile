# $OpenBSD: Makefile,v 1.122 2013/03/31 14:46:28 ajacoutot Exp $

COMMENT= 		Telepathy based messenger for GNOME

GNOME_PROJECT=		empathy
GNOME_VERSION=		3.6.4
REVISION=		4
CATEGORIES=		net

HOMEPAGE=		http://live.gnome.org/Empathy

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xtst
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += canberra canberra-gtk3 champlain-0.12 champlain-gtk-0.12
WANTLIB += clutter-1.0 clutter-gst-2.0 clutter-gtk-1.0 cogl cogl-pango
WANTLIB += dbus-1 dbus-glib-1 enchant execinfo expat farstream-0.2
WANTLIB += ffi folks folks-telepathy fontconfig freetype gailutil-3
WANTLIB += gck-1 gcr-3 gcr-base-3 gcrypt gdbm gdk-3 gdk_pixbuf-2.0
WANTLIB += gee-0.8 geoclue gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls
WANTLIB += goa-1.0 gobject-2.0 gpg-error graphite2 gstapp-0.10
WANTLIB += gstaudio-0.10 gstaudio-1.0 gstbase-0.10 gstbase-1.0
WANTLIB += gstfft-0.10 gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-0.10 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz hogweed icudata icui18n
WANTLIB += icule icuuc javascriptcoregtk-3.0 jpeg json json-glib-1.0
WANTLIB += ltdl m memphis-0.2 mission-control-plugins nettle notify
WANTLIB += ogg orc-0.4 p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs pulse pulse-mainloop-glib
WANTLIB += secret-1 sndfile soup-2.4 soup-gnome-2.4 sqlite3 stdc++
WANTLIB += tasn1 telepathy-farstream telepathy-glib telepathy-logger
WANTLIB += vorbis vorbisenc vorbisfile webkitgtk-3.0 xcb xcb-render
WANTLIB += xcb-shm xml2 xslt z zeitgeist-1.0 gee

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes
LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			audio/pulseaudio>=2.1 \
			devel/libgee06 \
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

# XXX NST currently only works with mail clients
CONFIGURE_ARGS +=	--disable-nautilus-sendto

# XXX needs geocode-glib
CONFIGURE_ARGS +=	--disable-geocode

# needs connman or network-manager
CONFIGURE_ARGS+=	--without-connectivity

post-install:
	rm ${PREFIX}/lib/mission-control-plugins.0/*.{a,la}

.include <bsd.port.mk>
