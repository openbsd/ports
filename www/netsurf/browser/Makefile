# $OpenBSD: Makefile,v 1.1.1.1 2010/06/29 20:11:13 landry Exp $

COMMENT =		lightweight web browser

NETSURF_PROJECT =	netsurf
NETSURF_VERSION =	2.5

CATEGORIES=		www

HOMEPAGE=		http://www.netsurf-browser.org/
MASTER_SITES =		${HOMEPAGE}downloads/releases/

LIB_DEPENDS =		hubbub::www/netsurf/hubbub \
			css::www/netsurf/libcss \
			nsgif::www/netsurf/libnsgif \
			nsbmp::www/netsurf/libnsbmp \
			mng::graphics/libmng \
			gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
			glade-2.0::devel/libglade2 \
			rsvg-2::x11/gnome/librsvg \
			curl::net/curl

WANTLIB +=		atk-1.0 cairo gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB +=		gthread-2.0 iconv intl jpeg lcms pango-1.0 pangocairo-1.0
WANTLIB +=		pangoft2-1.0 parserutils png wapcaplet xml2
WANTLIB += 		X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += 		Xi Xinerama Xrandr Xrender c crypto expat fontconfig
WANTLIB += 		freetype m pixman-1 pthread pthread-stubs ssl xcb
WANTLIB +=		xcb-render xcb-render-util z

WRKDIST =		${WRKDIR}/netsurf

do-configure:
	@echo	"NETSURF_USE_HARU_PDF := NO\n" \
		"NETSURF_USE_LIBICONV_PLUG := NO\n" \
		"NETSURF_USE_RSVG := YES\n" \
		"NETSURF_USE_NSSVG := NO\n" \
		"NETSURF_USE_ROSPRITE := NO" > ${WRKSRC}/Makefile.config

.include <bsd.port.mk>
