# $OpenBSD: Makefile,v 1.82 2013/01/05 12:53:09 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		GNOME control center

GNOME_PROJECT=		gnome-control-center
GNOME_VERSION=		3.6.3
REVISION=		1

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm asn1
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += canberra canberra-gtk3 colord crypto cups dbus-1 dbus-glib-1
WANTLIB += drm enchant execinfo expat ffi fontconfig freetype
WANTLIB += gailutil-3 gcrypt gdbm gdk-3 gdk_pixbuf-2.0 geoclue
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3 gnome-keyring
WANTLIB += gnome-menu-3 goa-1.0 goa-backend-1.0 gobject-2.0 gpg-error
WANTLIB += gssapi gstapp-0.10 gstaudio-0.10 gstbase-0.10 gstfft-0.10
WANTLIB += gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10
WANTLIB += gthread-2.0 gtk-3 gtop-2.0 harfbuzz icudata icui18n
WANTLIB += icule icuuc javascriptcoregtk-3.0 jpeg json json-glib-1.0
WANTLIB += krb5 kvm lcms2 ltdl m notify ogg orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png polkit-gobject-1
WANTLIB += pthread pthread-stubs pulse pulse-mainloop-glib rest-0.7
WANTLIB += secret-1 sndfile soup-2.4 soup-gnome-2.4 sqlite3 ssl
WANTLIB += stdc++ upower-glib vorbis vorbisfile webkitgtk-3.0
WANTLIB += xcb xcb-render xcb-shm xkbfile xml2 xslt z
WANTLIB += X11-xcb Xtst avahi-client avahi-common

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		x11/gnome/desktop>=3.6.0 \
			x11/gnome/menus>=3.6.0 \
			x11/gnome/online-accounts>=3.6.0 \
			sysutils/upower \
			devel/libgtop2 \
			print/cups,-libs \
			audio/pulseaudio>=2.1 \
			audio/libcanberra,-gtk3 \
			graphics/colord

BUILD_DEPENDS=		x11/gnome/settings-daemon>=3.6.1 \
			devel/iso-codes \
			devel/gsettings-desktop-schemas
RUN_DEPENDS=		x11/gnome/settings-daemon>=3.6.1 \
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

# needed for gnome-screen-panel
RUN_DEPENDS+=		x11/gnome/screensaver

# needed for gnome-sound-applet
RUN_DEPENDS+=		x11/gnome/icon-theme-symbolic

# needed for gnome-user-accounts-panel
RUN_DEPENDS+=		sysutils/accountsservice

# share/polkit-1/actions/org.gnome.controlcenter.datetime.policy
RUN_DEPENDS +=  sysutils/polkit

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

# Language code is synced with gdm but gnome-control-center does not
# provide a --with-incomplete-locales configure switch.
CFLAGS +=       -DWITH_INCOMPLETE_LOCALES

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static \
		--disable-update-mimedb \
		--disable-systemd \
		--without-cheese \
		--with-x \
		--enable-cups

# XXX requires ibus >= 1.4.99
CONFIGURE_ARGS += --disable-ibus

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/gnome-control-center

AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.11
BUILD_DEPENDS +=devel/autoconf/${AUTOCONF_VERSION} \
		devel/automake/${AUTOMAKE_VERSION} \
		devel/libtool \
		x11/gnome/common

pre-configure:
	@cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -i
	${SUBST_CMD} ${WRKSRC}/panels/printers/cc-printers-panel.c

post-install:
	rm ${PREFIX}/lib/control-center-1/panels/*.la

.include <bsd.port.mk>
