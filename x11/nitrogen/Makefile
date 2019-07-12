# $OpenBSD: Makefile,v 1.25 2019/07/12 20:51:17 sthen Exp $

COMMENT=		background browser and setter for X11

DISTNAME=		nitrogen-1.6.1
CATEGORIES=		x11 graphics
REVISION=		1

HOMEPAGE=		http://projects.l3ib.org/nitrogen/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atkmm-1.6 c cairo cairomm-1.0
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gdkmm-2.4
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 gtkmm-2.4 intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 pthread sigc-2.0 z

MASTER_SITES=		${HOMEPAGE}/files/

COMPILER =		base-clang ports-clang
CXXFLAGS +=		-std=c++11

LIB_DEPENDS=		devel/gettext,-runtime \
			x11/gtk2mm
RUN_DEPENDS=		x11/gtk+3,-guic

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-inotify
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

.include <bsd.port.mk>
