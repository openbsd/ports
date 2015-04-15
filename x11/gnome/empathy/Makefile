# $OpenBSD: Makefile,v 1.170 2015/04/15 09:40:53 ajacoutot Exp $

COMMENT= 		Telepathy based messenger for GNOME

GNOME_PROJECT=		empathy
GNOME_VERSION=		3.12.8
REVISION=		4

SUBST_VARS=		GNOME_VERSION

CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL FLAC GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xt Xtst atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += canberra canberra-gtk3 champlain-0.12 champlain-gtk-0.12
WANTLIB += clutter-1.0 clutter-gst-3.0 clutter-gtk-1.0 cogl cogl-pango
WANTLIB += cogl-path dbus-1 dbus-glib-1 drm enchant epoxy execinfo
WANTLIB += expat farstream-0.2 ffi folks folks-telepathy fontconfig
WANTLIB += freetype gbm gck-1 gcr-base-3 gcr-ui-3 gcrypt gdbm
WANTLIB += gdk-3 gdk_pixbuf-2.0 gee-0.8 geocode-glib gio-2.0 glapi
WANTLIB += glib-2.0 gmodule-2.0 gmp gnutls goa-1.0 gobject-2.0
WANTLIB += gpg-error graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstfft-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz harfbuzz-icu
WANTLIB += hogweed icudata icui18n icuuc javascriptcoregtk-3.0
WANTLIB += jpeg json-c json-glib-1.0 ltdl lzma m mission-control-plugins
WANTLIB += nettle notify ogg orc-0.4 p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += pulse pulse-mainloop-glib secret-1 sndfile soup-2.4
WANTLIB += sqlite3 stdc++ tasn1 telepathy-farstream telepathy-glib
WANTLIB += telepathy-logger vorbis vorbisenc vorbisfile webkitgtk-3.0
WANTLIB += webp xcb xcb-dri2 xcb-render xcb-shape xcb-shm xcb-xfixes
WANTLIB += xml2 xslt z zeitgeist-2.0

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
			geo/geocode-glib \
			geo/libchamplain \
			graphics/clutter/clutter-gst \
			net/telepathy/folks \
			net/telepathy/telepathy-farstream \
			net/telepathy/telepathy-logger \
			net/telepathy/telepathy-mission-control \
			textproc/enchant \
			www/webkit,gtk3 \
			x11/gnome/gcr \
			x11/gnome/online-accounts

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes \
			net/telepathy/telepathy-gabble \
			net/telepathy/telepathy-idle \
			net/telepathy/telepathy-salut \
			x11/gnome/contacts

# libempathy-gtk/empathy-geoclue-helper.c
BUILD_DEPENDS +=	geo/geoclue2
RUN_DEPENDS +=		geo/geoclue2

# gst-pulse (src/empathy-audio-sink.c)
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-good,-pulse

MODGNOME_TOOLS += 	desktop-file-utils gtk-update-icon-cache yelp
CONFIGURE_ARGS=		--disable-gudev

# needs signond, libsignon-glib -- Ubuntu/Meego
CONFIGURE_ARGS +=	--disable-ubuntu-online-accounts

# XXX
pre-configure:
	perl -pi -e 's,clutter-gst-2.0,clutter-gst-3.0,g' ${WRKSRC}/configure

post-install:
	rm ${PREFIX}/lib/mission-control-plugins.0/*.{a,la}

.include <bsd.port.mk>
