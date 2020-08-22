# $OpenBSD: Makefile,v 1.15 2020/08/22 08:22:33 robert Exp $

COMMENT=		MATE system monitor

MATE_PROJECT=		mate-system-monitor
MATE_VERSION=		1.24.1

CATEGORIES=		sysutils

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 XRes Xau Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 atkmm-1.6 c cairo cairo-gobject cairomm-1.0
WANTLIB += epoxy expat ffi fontconfig freetype fribidi
WANTLIB += gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0
WANTLIB += glibmm-2.4 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gtk-3 gtkmm-3.0 gtop-2.0 harfbuzz iconv intl kvm lzma
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4
WANTLIB += pcre pixman-1 png rsvg-2 sigc-2.0 wnck-3 xcb xcb-render
WANTLIB += xcb-shm xml2 z

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils yelp

LIB_DEPENDS=		devel/libgtop2 \
			devel/libwnck3 \
			devel/pango \
			x11/gtk+3 \
			x11/gtk3mm

# share/polkit-1/actions/org.mate.mate-system-monitor.policy
BUILD_DEPENDS +=	sysutils/polkit
RUN_DEPENDS +=		sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=		sysutils/consolekit

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
