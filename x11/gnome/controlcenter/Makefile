# $OpenBSD: Makefile,v 1.136 2014/08/15 09:27:28 ajacoutot Exp $

# XXX remove hostnames-test.txt hack in pre-configure when updating to 3.12.0
# https://git.gnome.org/browse/gnome-control-center/commit/?id=4736b03ed9e2ae9214117454f70811dbacd78739

# XXX change proxy settings without network-manager?

SHARED_ONLY=		Yes

COMMENT=		GNOME control center

GNOME_PROJECT=		gnome-control-center
GNOME_VERSION=		3.12.1
REVISION=		2

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL FLAC GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xtst
WANTLIB += accountsservice atk-1.0 atk-bridge-2.0 atspi avahi-common
WANTLIB += c cairo cairo-gobject canberra canberra-gtk3 colord
WANTLIB += colord-gtk colordprivate crack cups dbus-1 dbus-glib-1
WANTLIB += enchant execinfo expat ffi fontconfig freetype gcrypt
WANTLIB += gdbm gdk-3 gdk_pixbuf-2.0 geoclue gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-desktop-3 gnome-menu-3 goa-1.0 goa-backend-1.0
WANTLIB += gobject-2.0 gpg-error graphite2 grilo-0.2 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += gtop-2.0 harfbuzz harfbuzz-icu ibus-1.0 icudata icui18n
WANTLIB += icuuc javascriptcoregtk-3.0 jpeg json-c json-glib-1.0
WANTLIB += kvm lcms2 ltdl m ogg orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png polkit-gobject-1 pthread
WANTLIB += pthread-stubs pulse pulse-mainloop-glib pwquality rest-0.7
WANTLIB += secret-1 smbclient sndfile soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 stdc++ telepathy-glib upower-glib vorbis vorbisenc
WANTLIB += vorbisfile webkitgtk-3.0 webp xcb xcb-render xcb-shm
WANTLIB += xml2 xslt z gbm

MODULES=		devel/gettext \
			security/heimdal \
			x11/gnome

LIB_DEPENDS=		audio/pulseaudio \
			audio/libcanberra,-gtk3 \
			devel/libgtop2 \
			graphics/colord-gtk \
			net/samba \
			print/cups,-libs \
			security/libpwquality \
			sysutils/accountsservice \
			sysutils/upower \
			x11/gnome/desktop \
			x11/gnome/grilo \
			x11/gnome/menus \
			x11/gnome/online-accounts

BUILD_DEPENDS=		x11/gnome/settings-daemon \
			devel/iso-codes \
			devel/gsettings-desktop-schemas

RUN_DEPENDS=		x11/gnome/settings-daemon \
			devel/iso-codes \
			devel/gsettings-desktop-schemas

# NOTE that a11y dependencies (e.g. mousetweaks, caribou...) are not
# enforced on purpose.

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

# needed for gnome-color-panel
RUN_DEPENDS+=		x11/gnome/color-manager

# needed for gnome-power-panel+gnome-screen-panel
RUN_DEPENDS+=		x11/gnome/power-manager

# needed for gnome-printers-panel
RUN_DEPENDS+=		print/cups-pk-helper

# calls grl_registry_load...plugin
RUN_DEPENDS +=		x11/gnome/grilo-plugins

# needed for gnome-region-panel; optional and would create a cyclic dep:
# gnome-session -> gnome-shell -> gnome-control-center -> gnome-session
#RUN_DEPENDS+=		x11/gnome/session

MODGNOME_TOOLS += desktop-file-utils docbook gtk-update-icon-cache yelp
MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-control-center

.include <bsd.port.mk>
