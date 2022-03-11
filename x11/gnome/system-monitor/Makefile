COMMENT=		sytem monitor for GNOME

GNOME_PROJECT=		gnome-system-monitor
GNOME_VERSION=		41.0
REVISION=		0

CATEGORIES=		sysutils

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} c cairo gdk-3 gdk_pixbuf-2.0 gdkmm-3.0
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += gtk-3 gtkmm-3.0 gtop-2.0 handy-1 intl m pango-1.0 pangocairo-1.0
WANTLIB += rsvg-2 sigc-2.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

# c++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS=		devel/libgtop2>=2.38.0 \
			x11/gnome/librsvg \
			x11/gtk3mm \
			x11/libhandy

# share/polkit-1/actions/org.gnome.gnome-system-monitor.policy
BUILD_DEPENDS +=	sysutils/polkit
RUN_DEPENDS +=		sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=		sysutils/consolekit

MODGNOME_TOOLS=		desktop-file-utils yelp

CONFIGURE_ARGS=		-Dsystemd=false

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
