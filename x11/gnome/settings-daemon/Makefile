# $OpenBSD: Makefile,v 1.181 2019/05/09 17:22:31 ajacoutot Exp $

# XXX gcm-dmi.c:141:2: warning: #warning Please add dmi support for your OS

COMMENT=		GNOME settings daemon

GNOME_PROJECT=		gnome-settings-daemon
GNOME_VERSION=		3.32.0
REVISION=		0

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xi atk-1.0 c cairo cairo-gobject canberra
WANTLIB += canberra-gtk3 colord colordprivate cups fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 geoclue-2 geocode-glib
WANTLIB += gio-2.0 glib-2.0 gnome-desktop-3 gobject-2.0 gtk-3
WANTLIB += gweather-3 intl lcms2 m notify nspr4 nss3 nssutil3
WANTLIB += pango-1.0 pangocairo-1.0 plc4 plds4 polkit-gobject-1
WANTLIB += pulse pulse-mainloop-glib upower-glib z

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

# plugins/mouse/gsd-mouse-manager.c
RUN_DEPENDS +=		x11/gnome/mousetweaks

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
			-Dwayland=false

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-settings-daemon
	mv ${WRKINST}${SYSCONFDIR}/xdg \
		${PREFIX}/share/examples/gnome-settings-daemon/

.include <bsd.port.mk>
