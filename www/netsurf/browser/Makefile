# $OpenBSD: Makefile,v 1.4 2010/09/30 19:45:04 landry Exp $

COMMENT =		lightweight web browser

NETSURF_PROJECT =	netsurf
NETSURF_VERSION =	2.6

CATEGORIES=		www

HOMEPAGE=		http://www.netsurf-browser.org/
MASTER_SITES =		${HOMEPAGE}downloads/releases/

MODULE =		devel/gettext

LIB_DEPENDS =		hubbub::www/netsurf/hubbub \
			css::www/netsurf/libcss \
			nsgif::www/netsurf/libnsgif \
			nsbmp::www/netsurf/libnsbmp \
			mng::graphics/libmng \
			gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2 \
			glade-2.0::devel/libglade2 \
			rsvg-2::x11/gnome/librsvg \
			curl::net/curl

WANTLIB +=		atk-1.0 cairo gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB +=		gthread-2.0 jpeg lcms pango-1.0 pangocairo-1.0
WANTLIB +=		pangoft2-1.0 parserutils png wapcaplet xml2
WANTLIB += 		X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += 		Xi Xinerama Xrandr Xrender c crypto expat fontconfig
WANTLIB += 		freetype m pixman-1 pthread pthread-stubs ssl xcb
WANTLIB +=		xcb-render xcb-render-util z gdk_pixbuf-2.0

WRKDIST =		${WRKDIR}/netsurf

do-configure:
	@echo	"NETSURF_USE_HARU_PDF := NO\n" \
		"NETSURF_USE_LIBICONV_PLUG := NO\n" \
		"NETSURF_USE_RSVG := YES\n" \
		"NETSURF_USE_NSSVG := NO\n" \
		"NETSURF_USE_ROSPRITE := NO" > ${WRKSRC}/Makefile.config

.include <bsd.port.mk>
