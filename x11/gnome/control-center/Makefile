# $OpenBSD: Makefile,v 1.60 2020/03/28 18:51:17 kmos Exp $

# XXX change proxy settings without network-manager?

COMMENT=		GNOME settings

GNOME_PROJECT=		gnome-control-center
GNOME_VERSION=		3.34.4

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 accountsservice atk-1.0 c cairo colord colord-gtk
WANTLIB += colordprivate cups fontconfig gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gnome-desktop-3 goa-1.0 goa-backend-1.0
WANTLIB += gobject-2.0 gsound gtk-3 gtop-2.0 handy-0.0 ibus-1.0
WANTLIB += intl m pango-1.0 pangocairo-1.0 polkit-gobject-1 pulse
WANTLIB += pulse-mainloop-glib pwquality smbclient soup-2.4 upower-glib
WANTLIB += xml2

MODULES=		devel/meson \
			devel/dconf \
			security/heimdal \
			x11/gnome

# Needed to build on base-gcc architectures
CFLAGS=			-std=gnu99

LIB_DEPENDS=		audio/gsound \
			audio/pulseaudio \
			devel/libgtop2 \
			graphics/colord-gtk \
			net/samba \
			print/cups,-libs \
			security/libpwquality \
			sysutils/accountsservice \
			sysutils/upower \
			x11/gnome/desktop \
			x11/gnome/online-accounts \
			x11/libhandy

BUILD_DEPENDS=		devel/iso-codes \
			devel/gsettings-desktop-schemas \
			x11/gnome/grilo \
			x11/gnome/settings-daemon

RUN_DEPENDS=		x11/gnome/settings-daemon \
			devel/iso-codes \
			devel/gsettings-desktop-schemas

# NOTE that a11y dependencies (e.g. mousetweaks, caribou...) are not
# enforced on purpose.

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

# needed for gnome-color-panel
RUN_DEPENDS +=		x11/gnome/color-manager

# needed for gnome-power-panel+gnome-screen-panel
RUN_DEPENDS +=		x11/gnome/power-manager

# needed for gnome-printers-panel
RUN_DEPENDS +=		print/cups-pk-helper \
			print/system-config-printer

# gkbd-keyboard-display
RUN_DEPENDS +=		x11/gnome/libgnomekbd

# calls grl_registry_load...plugin
RUN_DEPENDS +=		x11/gnome/grilo-plugins

# needed for gnome-region-panel; optional and would create a cyclic dep:
# gnome-session -> gnome-shell -> gnome-control-center -> gnome-session
#RUN_DEPENDS +=		x11/gnome/session

MODGNOME_TOOLS +=	desktop-file-utils docbook
MODGNOME_TOOLS +=	gtk-update-icon-cache yelp

MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_ARGS=		-Dcheese=false \
			-Dwayland=false

pre-configure:
	${SUBST_CMD} ${WRKSRC}/panels/printers/pp-host.c \
		${WRKSRC}/shell/meson.build

.include <bsd.port.mk>
