# $OpenBSD: Makefile,v 1.97 2013/04/28 07:08:42 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		GNOME control center

GNOME_PROJECT=		gnome-control-center
GNOME_VERSION=		3.8.1
REVISION=		0

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
WANTLIB += gnome-menu-3 goa-1.0 goa-backend-1.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 gtop-2.0 harfbuzz ibus-1.0 icudata
WANTLIB += icui18n icule icuuc javascriptcoregtk-3.0 jpeg json
WANTLIB += json-glib-1.0 kvm lcms2 ltdl m ogg orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png polkit-gobject-1
WANTLIB += pthread pthread-stubs pulse pulse-mainloop-glib rest-0.7
WANTLIB += secret-1 smbclient sndfile soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 stdc++ upower-glib vorbis vorbisenc vorbisfile
WANTLIB += webkitgtk-3.0 webp xcb xcb-render xcb-shm xkbfile xml2
WANTLIB += xslt z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		audio/pulseaudio \
			audio/libcanberra,-gtk3 \
			devel/libgtop2 \
			graphics/colord-gtk \
			net/samba \
			print/cups,-libs \
			sysutils/accountsservice \
			sysutils/upower \
			x11/gnome/desktop \
			x11/gnome/menus \
			x11/gnome/online-accounts>=3.8.1

BUILD_DEPENDS=		x11/gnome/settings-daemon \
			devel/iso-codes \
			devel/gsettings-desktop-schemas

RUN_DEPENDS=		x11/gnome/settings-daemon \
			devel/iso-codes \
			devel/gsettings-desktop-schemas

# man pages
BUILD_DEPENDS += textproc/docbook-xsl

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

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

# needed for gnome-region-panel; optionnal and would create a cyclic dep:
# gnome-session -> gnome-control-center -> gnome-session
#RUN_DEPENDS+=		x11/gnome/session

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_ARGS=		--disable-static

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-control-center

AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.11
AUTOTOOLS_ENV +=	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}
MAKE_ENV +=		${AUTOTOOLS_ENV}
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool \
			x11/gnome/common

post-extract:
	${INSTALL} -m 555 ${FILESDIR}/krb5-config ${WRKDIR}/bin

pre-configure:
	@cd ${WRKSRC} && \
		${AUTOTOOLS_ENV} \
		autoreconf -i

.include <bsd.port.mk>
