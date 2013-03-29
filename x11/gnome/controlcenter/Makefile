# $OpenBSD: Makefile,v 1.87 2013/03/29 18:18:43 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		GNOME control center

GNOME_PROJECT=		gnome-control-center
GNOME_VERSION=		3.8.0

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xtst accountsservice
WANTLIB += atk-1.0 atk-bridge-2.0 atspi avahi-common c cairo cairo-gobject
WANTLIB += canberra canberra-gtk3 colord colord-gtk colordprivate
WANTLIB += cups dbus-1 dbus-glib-1 enchant execinfo expat ffi
WANTLIB += fontconfig freetype gailutil-3 gcrypt gdbm gdk-3 gdk_pixbuf-2.0
WANTLIB += geoclue gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += gnome-keyring gnome-menu-3 goa-1.0 goa-backend-1.0
WANTLIB += gobject-2.0 gpg-error graphite2 gstapp-0.10 gstaudio-0.10
WANTLIB += gstbase-0.10 gstfft-0.10 gstinterfaces-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gstvideo-0.10 gthread-2.0 gtk-3 gtop-2.0
WANTLIB += harfbuzz ibus-1.0 icudata icui18n icule icuuc javascriptcoregtk-3.0
WANTLIB += jpeg json json-glib-1.0 kvm lcms2 ltdl m notify ogg
WANTLIB += orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png polkit-gobject-1 pthread pthread-stubs
WANTLIB += pulse pulse-mainloop-glib rest-0.7 secret-1 sndfile
WANTLIB += soup-2.4 soup-gnome-2.4 sqlite3 stdc++ upower-glib
WANTLIB += vorbis vorbisenc vorbisfile webkitgtk-3.0 xcb xcb-render
WANTLIB += xcb-shm xkbfile xml2 xslt z smbclient

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		x11/gnome/desktop \
			x11/gnome/menus \
			x11/gnome/online-accounts \
			sysutils/upower \
			devel/libgtop2 \
			print/cups,-libs \
			audio/pulseaudio \
			audio/libcanberra,-gtk3 \
			graphics/colord \
			net/samba>=3.6.13p0

BUILD_DEPENDS=		x11/gnome/settings-daemon \
			devel/iso-codes \
			devel/gsettings-desktop-schemas
RUN_DEPENDS=		x11/gnome/settings-daemon \
			devel/iso-codes \
			devel/gsettings-desktop-schemas

# man pages
BUILD_DEPENDS += textproc/docbook-xsl

# XXX when the user account panel is re-enabled
BUILD_DEPENDS +=	security/libpwquality
#LIB_DEPENDS +=		security/libpwquality

# NOTE that a11y dependencies (e.g. mousetweaks, caribou...) are not
# enforced on purpose.

# needed for gnome-color-panel
RUN_DEPENDS+=		x11/gnome/color-manager

# needed for gnome-power-panel+gnome-screen-panel
RUN_DEPENDS+=		x11/gnome/power-manager

# needed for gnome-printers-panel
RUN_DEPENDS+=		print/cups-pk-helper

# needed for gnome-user-accounts-panel
RUN_DEPENDS+=		sysutils/accountsservice

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_ARGS=		--disable-static \
			--disable-update-mimedb \
			--disable-systemd

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-control-center

AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.11
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool \
			x11/gnome/common

post-extract:
	${INSTALL} -m 555 ${FILESDIR}/krb5-config ${WRKDIR}/bin

pre-configure:
	@cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -i

.include <bsd.port.mk>
