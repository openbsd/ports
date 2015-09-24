# $OpenBSD: Makefile,v 1.15 2015/09/24 10:37:31 ajacoutot Exp $

# XXX check if still needed at next update
CXXFLAGS +=		-std=c++11

COMMENT=		background browser and setter for X11

DISTNAME=		nitrogen-1.5.2
REVISION=		8
CATEGORIES=		x11 graphics

HOMEPAGE=		http://projects.l3ib.org/nitrogen/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atkmm-1.6 c cairo cairomm-1.0
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gdkmm-2.4
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 gtkmm-2.4 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangomm-1.4 pthread sigc-2.0 z

MASTER_SITES=		${HOMEPAGE}/files/

MODULES=		devel/gettext

# c++11
MODULES +=		gcc4
MODGCC4_ARCHS=		*
MODGCC4_LANGS=		c++

LIB_DEPENDS=		x11/gtk2mm
RUN_DEPENDS=		x11/gtk+3,-guic

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-inotify
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

.include <bsd.port.mk>
