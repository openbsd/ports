COMMENT=		initial-setup firstboot-like tool

GNOME_PROJECT=		gnome-initial-setup
GNOME_VERSION=		42.1.1

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += accountsservice c cairo cheese cheese-gtk fontconfig
WANTLIB += gdk-3 gdk_pixbuf-2.0 gdm geoclue-2 geocode-glib gio-2.0
WANTLIB += glib-2.0 gnome-desktop-4 goa-1.0 goa-backend-1.0 gobject-2.0
WANTLIB += gtk-3 gweather-4 handy-1 ibus-1.0 intl json-glib-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 polkit-gobject-1 pwquality
WANTLIB += rest-0.7 secret-1 webkit2gtk-4.0

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			devel/meson \
			security/heimdal \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils

BUILD_DEPENDS=		geo/geoclue2

LIB_DEPENDS=		geo/geocode-glib \
			inputmethods/ibus \
			security/libpwquality \
			x11/gnome/cheese,-libs \
			x11/gnome/desktop,-gtk4 \
			x11/gnome/gdm \
			x11/gnome/libgweather4 \
			x11/gnome/online-accounts \
			x11/libhandy

# runs gnome-tour at the end of an initial setup run
RUN_DEPENDS +=		x11/gnome/tour

# share/polkit-1/rules.d/20-gnome-initial-setup.rules
RUN_DEPENDS +=		sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=		sysutils/consolekit

CONFIGURE_ARGS=		-Dsystemd=false

# requires malcontent
# https://gitlab.freedesktop.org/pwithnall/malcontent/
CONFIGURE_ARGS +=	-Dparental_controls=disabled

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gnome-initial-setup/meson.build

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-initial-setup
	mv ${WRKINST}${SYSCONFDIR}/xdg \
		${PREFIX}/share/examples/gnome-initial-setup

.include <bsd.port.mk>
