# $OpenBSD: Makefile,v 1.55 2020/04/26 07:48:27 ajacoutot Exp $

COMMENT=		initial-setup firstboot-like tool

GNOME_PROJECT=		gnome-initial-setup
GNOME_VERSION=		3.34.6

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += accountsservice c cairo fontconfig gdk-3 gdk_pixbuf-2.0
WANTLIB += gdm geoclue-2 gio-2.0 glib-2.0 gnome-desktop-3 goa-1.0
WANTLIB += goa-backend-1.0 gobject-2.0 gtk-3 gweather-3 ibus-1.0
WANTLIB += intl json-glib-1.0 m pango-1.0 pangocairo-1.0 polkit-gobject-1
WANTLIB += pwquality rest-0.7 secret-1 webkit2gtk-4.0

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			devel/meson \
			security/heimdal \
			x11/gnome

LIB_DEPENDS=		inputmethods/ibus \
			security/libpwquality \
			x11/gnome/desktop \
			x11/gnome/gdm \
			x11/gnome/libgweather \
			x11/gnome/online-accounts

BUILD_DEPENDS=		geo/geoclue2
RUN_DEPENDS=		geo/geoclue2

# gnome-welcome-tour
RUN_DEPENDS +=		x11/gnome/getting-started-docs

# share/polkit-1/rules.d/20-gnome-initial-setup.rules
RUN_DEPENDS +=		sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=		sysutils/consolekit

CONFIGURE_ARGS=		-Dcheese=disabled \
			-Dsoftware-sources=disabled \
			-Dsystemd=false

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gnome-initial-setup/meson.build

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-initial-setup
	mv ${WRKINST}${SYSCONFDIR}/xdg \
		${PREFIX}/share/examples/gnome-initial-setup

.include <bsd.port.mk>
