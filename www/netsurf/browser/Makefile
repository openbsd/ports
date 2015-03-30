# $OpenBSD: Makefile,v 1.21 2015/03/30 03:01:51 bentley Exp $

COMMENT =		lightweight web browser

NETSURF_PROJECT =	netsurf
NETSURF_VERSION =	3.3

HOMEPAGE=		http://www.netsurf-browser.org/
MASTER_SITES =		http://download.netsurf-browser.org/netsurf/releases/source/

MODULES =		devel/gettext

BUILD_DEPENDS =		www/p5-HTML-Parser
LIB_DEPENDS =		www/netsurf/hubbub>=0.3.1 \
			www/netsurf/libcss>=0.5.0 \
			www/netsurf/libnsgif>=0.1.2 \
			www/netsurf/libnsbmp>=0.1.2 \
			www/netsurf/libdom>=0.1.2 \
			www/netsurf/libnsutils \
			www/netsurf/libutf8proc \
			graphics/libwebp \
			x11/gtk+2 \
			x11/gnome/librsvg \
			net/curl
RUN_DEPENDS =		devel/desktop-file-utils

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo crypto css curl dom
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 hubbub jpeg m nsbmp nsgif pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 parserutils png pthread
WANTLIB += rsvg-2 ssl utf8proc wapcaplet webp z nsutils

MAKE_FLAGS +=		NETSURF_USE_HARU_PDF=NO \
			NETSURF_USE_LIBICONV_PLUG=NO \
			NETSURF_USE_RSVG=YES \
			NETSURF_USE_NSSVG=NO \
			NETSURF_USE_ROSPRITE=NO \
			NETSURF_USE_WEBP=YES \
			NETSURF_USE_MOZJS=NO \
			NETSURF_USE_JS=NO

post-patch:
	#http://bugs.netsurf-browser.org/mantis/view.php?id=2045
	cp ${WRKSRC}/gtk/res/options.gtk2.ui{,.unfixed}
	cd ${WRKSRC} && egrep translatable.*preferences gtk/res/options.gtk2.ui | \
		sed -e 's/.*>\(.*\)<.*/\1/' | while read c ; do \
		v=$$(egrep ^en\..*$$c: ${WRKSRC}/resources/FatMessages | cut -d : -f2 | sed -e 's/</\&lt;/g') ; \
		perl -pi -e "s#>$$c<#>$$v<#" ${WRKSRC}/gtk/res/options.gtk2.ui ; done
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/gtk/res/netsurf-gtk.desktop \
		${PREFIX}/share/applications/netsurf.desktop
# bug in pkg_add -u prevents symlink->directory in pkg updates
	rm -rf ${PREFIX}/share/netsurf/C
	ln -s en ${PREFIX}/share/netsurf/C

.include <bsd.port.mk>
