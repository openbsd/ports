# $OpenBSD: Makefile,v 1.120 2014/02/09 08:48:33 ajacoutot Exp $

# XXX change proxy settings without network-manager?

SHARED_ONLY=		Yes

COMMENT=		GNOME control center

GNOME_PROJECT=		gnome-control-center
GNOME_VERSION=		3.10.2
REVISION=		1

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL FLAC GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xtst
WANTLIB += accountsservice asn1 atk-1.0 atk-bridge-2.0 atspi avahi-common
WANTLIB += c cairo cairo-gobject canberra canberra-gtk3 colord
WANTLIB += colord-gtk colordprivate com_err crack crypto cups
WANTLIB += dbus-1 dbus-glib-1 enchant execinfo expat ffi fontconfig
WANTLIB += freetype gcrypt gdbm gdk-3 gdk_pixbuf-2.0 geoclue gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnome-desktop-3 gnome-menu-3 goa-1.0
WANTLIB += goa-backend-1.0 gobject-2.0 gpg-error graphite2 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += gtop-2.0 harfbuzz harfbuzz-icu heimbase ibus-1.0 icudata
WANTLIB += icui18n icuuc javascriptcoregtk-3.0 jpeg json-c json-glib-1.0
WANTLIB += krb5 kvm lcms2 ltdl m ogg orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png polkit-gobject-1 pthread
WANTLIB += pthread-stubs pulse pulse-mainloop-glib pwquality rest-0.7
WANTLIB += roken secret-1 smbclient sndfile soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 stdc++ telepathy-glib upower-glib vorbis vorbisenc
WANTLIB += vorbisfile webkitgtk-3.0 webp wind xcb xcb-render xcb-shm
WANTLIB += xkbfile xml2 xslt z

MODULES=		devel/gettext \
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
			x11/gnome/menus \
			x11/gnome/online-accounts

BUILD_DEPENDS=		x11/gnome/settings-daemon \
			devel/iso-codes \
			devel/gsettings-desktop-schemas

RUN_DEPENDS=		x11/gnome/settings-daemon \
			devel/iso-codes \
			devel/gsettings-desktop-schemas

# man pages
BUILD_DEPENDS += textproc/docbook-xsl

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

# needed for gnome-region-panel; optionnal and would create a cyclic dep:
# gnome-session -> gnome-shell -> gnome-control-center -> gnome-session
#RUN_DEPENDS+=		x11/gnome/session

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_ARGS=		--disable-static

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-control-center

# XXX https://bugzilla.gnome.org/show_bug.cgi?id=650342
pre-configure:
	echo >${WRKSRC}/shell/hostnames-test.txt

.include <bsd.port.mk>
