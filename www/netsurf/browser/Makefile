# $OpenBSD: Makefile,v 1.15 2013/05/31 16:18:40 jturner Exp $

COMMENT =		lightweight web browser

NETSURF_PROJECT =	netsurf
NETSURF_VERSION =	3.0
REVISION =		0

HOMEPAGE=		http://www.netsurf-browser.org/
MASTER_SITES =		http://download.netsurf-browser.org/netsurf/releases/source/

MODULES =		devel/gettext

LIB_DEPENDS =		www/netsurf/hubbub>=0.2.0 \
			www/netsurf/libcss>=0.2.0 \
			www/netsurf/libnsgif>=0.1.0 \
			www/netsurf/libnsbmp>=0.1.0 \
			www/netsurf/libdom \
			graphics/libmng \
			graphics/libwebp \
			x11/gtk+2 \
			x11/gnome/librsvg \
			net/curl

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo crypto css curl dom
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 hubbub jpeg lcms m mng nsbmp nsgif pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 parserutils png pthread
WANTLIB += rsvg-2 ssl wapcaplet webp z

MAKE_FLAGS +=		NETSURF_USE_HARU_PDF=NO \
			NETSURF_USE_LIBICONV_PLUG=NO \
			NETSURF_USE_RSVG=YES \
			NETSURF_USE_NSSVG=NO \
			NETSURF_USE_ROSPRITE=NO \
			NETSURF_USE_WEBP=YES

post-install:
	ln -s en ${PREFIX}/share/netsurf/C

.include <bsd.port.mk>
