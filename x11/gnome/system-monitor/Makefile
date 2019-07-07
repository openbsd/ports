# $OpenBSD: Makefile,v 1.84 2019/07/07 11:20:55 ajacoutot Exp $

COMMENT=		sytem monitor for GNOME

GNOME_PROJECT=		gnome-system-monitor
GNOME_VERSION=		3.32.1

CATEGORIES=		sysutils

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0 giomm-2.4
WANTLIB += glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0 gtk-3 gtkmm-3.0
WANTLIB += gtop-2.0 intl m pango-1.0 pangocairo-1.0 rsvg-2 sigc-2.0
WANTLIB += atk-1.0 atkmm-1.6 cairo-gobject cairomm-1.0 pangomm-1.4
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

.include <bsd.port.mk>
