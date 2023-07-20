# XXX gcm-dmi.c:141:2: warning: #warning Please add dmi support for your OS

COMMENT=		GNOME settings daemon

GNOME_PROJECT=		gnome-settings-daemon
GNOME_VERSION=		44.1
REVISION=		0

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xext Xfixes Xi c canberra canberra-gtk3 colord
WANTLIB += cups fontconfig gdk-3 geoclue-2 geocode-glib-2 gio-2.0
WANTLIB += glib-2.0 gnome-desktop-3 gobject-2.0 gtk-3 gweather-4
WANTLIB += intl m notify nspr4 nss3 polkit-gobject-1 pulse pulse-mainloop-glib
WANTLIB += upower-glib

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			audio/pulseaudio \
			devel/libnotify \
			geo/geoclue2 \
			geo/geocode-glib,soup3 \
			graphics/colord \
			print/cups,-libs \
			security/nss \
			sysutils/upower \
			x11/gnome/desktop \
			x11/gnome/libgweather4

BUILD_DEPENDS=		devel/gsettings-desktop-schemas
RUN_DEPENDS=		devel/gsettings-desktop-schemas

# share/polkit-1/actions/org.gnome.settings-daemon.plugins.power.policy
RUN_DEPENDS +=		sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=		sysutils/consolekit

# plugins/power/gsd-power-manager.c; optional dependency
# cyclic dep: gnome-session -> gnome-settings-daemon -> gnome-session
#RUN_DEPENDS +=		x11/gnome/session

MODGNOME_TOOLS=		docbook
MODGNOME_LDFLAGS=	-L${X11BASE}/lib
# XXX needed for gsd-usb-protection
MODGNOME_LDFLAGS +=	-Wl,-z,nobtcfi

CONFIGURE_ARGS= 	-Dalsa=false \
			-Dgudev=false \
			-Dnetwork_manager=false \
			-Drfkill=false \
			-Dsystemd=false \
			-Dwayland=false \
			-Dwwan=false

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-settings-daemon
	mv ${WRKINST}${SYSCONFDIR}/xdg \
		${PREFIX}/share/examples/gnome-settings-daemon/

.include <bsd.port.mk>
