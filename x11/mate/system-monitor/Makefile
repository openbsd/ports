# $OpenBSD: Makefile,v 1.6 2019/03/27 18:13:39 robert Exp $

COMMENT=		MATE system monitor

MATE_PROJECT=		mate-system-monitor

CATEGORIES=		sysutils

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject epoxy
WANTLIB += expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gtop-2.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png16 pthread
WANTLIB += xcb xcb-render xcb-shm z
WANTLIB += ${COMPILER_LIBCXX} X11-xcb XRes croco-0.6 fribidi kvm
WANTLIB += lzma rsvg-2 xcb-util xml2
WANTLIB += atkmm-1.6 gdkmm-3.0 cairomm-1.0 giomm-2.4 glibmm-2.4 gtkmm-3.0
WANTLIB += pangomm-1.4 sigc-2.0 startup-notification-1 wnck-3

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils yelp

LIB_DEPENDS=		devel/libgtop2 \
			devel/libwnck3 \
			devel/pango \
			devel/startup-notification \
			x11/gtk+3 \
			x11/gtk3mm

RUN_DEPENDS=		sysutils/consolekit

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
