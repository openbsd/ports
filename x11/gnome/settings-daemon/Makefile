# XXX gcm-dmi.c:141:2: warning: #warning Please add dmi support for your OS

COMMENT=		GNOME settings daemon

GNOME_PROJECT=		gnome-settings-daemon
GNOME_VERSION=		46.0

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xext Xfixes Xi c canberra canberra-gtk3 colord
WANTLIB += cups fontconfig gck-2 gdk-3 geoclue-2 geocode-glib-2
WANTLIB += gio-2.0 glib-2.0 gnome-desktop-3 gobject-2.0 gtk-3
WANTLIB += gweather-4 intl m notify p11-kit polkit-gobject-1 pulse
WANTLIB += pulse-mainloop-glib upower-glib wayland-client

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			audio/pulseaudio \
			devel/libnotify \
			geo/geoclue2 \
			geo/geocode-glib \
			graphics/colord \
			print/cups,-libs \
			sysutils/upower \
			x11/gnome/desktop \
			x11/gnome/gcr4 \
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
			-Dwwan=false

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-settings-daemon
	mv ${WRKINST}${SYSCONFDIR}/xdg \
		${PREFIX}/share/examples/gnome-settings-daemon/

.include <bsd.port.mk>
