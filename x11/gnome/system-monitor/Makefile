# $OpenBSD: Makefile,v 1.85 2020/05/14 15:11:47 jasper Exp $

COMMENT=		sytem monitor for GNOME

GNOME_PROJECT=		gnome-system-monitor
GNOME_VERSION=		3.36.0

CATEGORIES=		sysutils

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0 giomm-2.4
WANTLIB += glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0 gtk-3 gtkmm-3.0
WANTLIB += gtop-2.0 intl m pango-1.0 pangocairo-1.0 rsvg-2 sigc-2.0
WANTLIB += ${COMPILER_LIBCXX}

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

# c++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS=		devel/libgtop2>=2.38.0 \
			x11/gnome/librsvg \
			x11/gtk3mm

# share/polkit-1/actions/org.gnome.gnome-system-monitor.policy
BUILD_DEPENDS +=	sysutils/polkit
RUN_DEPENDS +=		sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=		sysutils/consolekit

MODGNOME_TOOLS=		desktop-file-utils yelp

CONFIGURE_ARGS=		-Dsystemd=false

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
