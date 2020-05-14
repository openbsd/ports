# $OpenBSD: Makefile,v 1.187 2020/05/14 15:04:21 ajacoutot Exp $

# XXX gcm-dmi.c:141:2: warning: #warning Please add dmi support for your OS

COMMENT=		GNOME settings daemon

GNOME_PROJECT=		gnome-settings-daemon
GNOME_VERSION=		3.36.1

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xext Xi c canberra canberra-gtk3 colord colordprivate
WANTLIB += cups fontconfig gdk-3 geoclue-2 geocode-glib gio-2.0
WANTLIB += glib-2.0 gnome-desktop-3 gobject-2.0 gtk-3 gweather-3
WANTLIB += intl lcms2 m notify nspr4 nss3 polkit-gobject-1 pulse
WANTLIB += pulse-mainloop-glib upower-glib

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			audio/pulseaudio \
			devel/libnotify \
			geo/geocode-glib \
			graphics/colord \
			print/cups,-libs \
			security/nss \
			sysutils/upower \
			x11/gnome/desktop \
			x11/gnome/libgweather

BUILD_DEPENDS=		devel/gsettings-desktop-schemas
RUN_DEPENDS=		devel/gsettings-desktop-schemas

# share/polkit-1/actions/org.gnome.settings-daemon.plugins.power.policy
RUN_DEPENDS +=		sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=		sysutils/consolekit

# plugins/datetime/geoclue.c
BUILD_DEPENDS +=	geo/geoclue2
RUN_DEPENDS +=		geo/geoclue2

# libexec/gnome-settings-daemon-localeexec
RUN_DEPENDS +=		inputmethods/ibus

# plugins/power/gsd-power-manager.c; optional dependency
# cyclic dep: gnome-session -> gnome-settings-daemon -> gnome-session
#RUN_DEPENDS +=		x11/gnome/session

MODGNOME_TOOLS=		docbook
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

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
