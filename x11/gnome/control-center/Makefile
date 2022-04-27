# XXX change proxy settings without network-manager?

COMMENT=		GNOME settings

GNOME_PROJECT=		gnome-control-center
GNOME_VERSION=		42.1

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 accountsservice adwaita-1 c cairo cups epoxy fontconfig
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gnome-bg-4 gnome-desktop-4
WANTLIB += goa-1.0 goa-backend-1.0 gobject-2.0 gsound gtk-3 gtk-4
WANTLIB += gtop-2.0 ibus-1.0 intl m pango-1.0 pangocairo-1.0 polkit-gobject-1
WANTLIB += pulse pulse-mainloop-glib pwquality smbclient upower-glib
WANTLIB += xml2

MODULES=		devel/meson \
			devel/dconf \
			security/heimdal \
			x11/gnome

# Needed to build on base-gcc architectures
CFLAGS +=		-std=gnu99

LIB_DEPENDS=		audio/gsound \
			audio/pulseaudio \
			devel/libgtop2 \
			inputmethods/ibus \
			net/samba \
			print/cups,-libs \
			security/libpwquality \
			sysutils/accountsservice \
			sysutils/upower \
			x11/gnome/desktop,-gtk4 \
			x11/gnome/online-accounts \
			x11/gnome/libadwaita

BUILD_DEPENDS=		devel/iso-codes \
			devel/gsettings-desktop-schemas \
			x11/gnome/settings-daemon

RUN_DEPENDS=		x11/gnome/settings-daemon \
			devel/iso-codes \
			devel/gsettings-desktop-schemas

# NOTE that a11y dependencies (e.g. mousetweaks, caribou...) are not
# enforced on purpose.

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

# needed for gnome-printers-panel
RUN_DEPENDS +=		print/cups-pk-helper \
			print/system-config-printer

# gkbd-keyboard-display
RUN_DEPENDS +=		x11/gnome/libgnomekbd

# panels/sound/cc-speaker-test-button.c:
# return g_strsplit ("audio-channel-front-left;audio-test-signal;bell", ";", -1);
RUN_DEPENDS +=		audio/sound-theme-freedesktop

# needed for gnome-region-panel; optional and would create a cyclic dep:
# gnome-session -> gnome-shell -> gnome-control-center -> gnome-session
#RUN_DEPENDS +=		x11/gnome/session

MODGNOME_TOOLS +=	desktop-file-utils docbook
MODGNOME_TOOLS +=	gtk-update-icon-cache yelp

MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_ARGS=		-Dwayland=false

DEBUG_PACKAGES=		${BUILD_PACKAGES}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/panels/printers/pp-host.c \
		${WRKSRC}/shell/meson.build

.include <bsd.port.mk>
