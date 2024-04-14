COMMENT=		view current processes and monitor system state

GNOME_PROJECT=		gnome-system-monitor
GNOME_VERSION=		46.0

CATEGORIES=		sysutils

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} adwaita-1 c cairo gdk_pixbuf-2.0
WANTLIB += gio-2.0 giomm-2.68 glib-2.0 glibmm-2.68 gmodule-2.0
WANTLIB += gobject-2.0 graphene-1.0 gtk-4 gtkmm-4.0 gtop-2.0 intl
WANTLIB += m pango-1.0 pangocairo-1.0 rsvg-2 sigc-3.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

# c++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS=		devel/libgtop2 \
			x11/gnome/libadwaita \
			x11/gnome/librsvg \
			x11/gtkmm40

# share/polkit-1/actions/org.gnome.gnome-system-monitor.policy
BUILD_DEPENDS +=	sysutils/polkit
RUN_DEPENDS +=		sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=		sysutils/consolekit

MODGNOME_TOOLS=		desktop-file-utils yelp

CONFIGURE_ARGS=		-Dsystemd=false

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
