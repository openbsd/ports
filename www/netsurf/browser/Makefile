# $OpenBSD: Makefile,v 1.40 2020/05/28 15:25:26 cwen Exp $

COMMENT =		lightweight web browser, with GTK interface

NETSURF_PROJECT =	netsurf
NETSURF_VERSION =	3.10
REVISION =		0

HOMEPAGE =		https://www.netsurf-browser.org/
MASTER_SITES =		https://download.netsurf-browser.org/netsurf/releases/source/

BUILD_DEPENDS =		editors/vim \
			www/netsurf/nsgenbind>=0.5 \
			www/p5-HTML-Parser
LIB_DEPENDS =		graphics/libwebp \
			www/netsurf/hubbub>=0.3.4 \
			www/netsurf/libcss>=0.7.0 \
			www/netsurf/libnsgif>=0.2.0 \
			www/netsurf/libnsbmp>=0.1.4 \
			www/netsurf/libnslog \
			www/netsurf/libdom>=0.3.2 \
			www/netsurf/libnspsl>=0.1.2 \
			www/netsurf/libnsutils>=0.0.3 \
			www/netsurf/libutf8proc>=1.3.1p0 \
			x11/gtk+3 \
			x11/gnome/librsvg \
			net/curl
RUN_DEPENDS =		devel/desktop-file-utils
TEST_DEPENDS =		devel/check

WANTLIB += atk-1.0 c cairo cairo-gobject crypto css curl dom expat
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz hubbub iconv intl jpeg m
WANTLIB += nsbmp nsgif nslog nspsl nsutils pango-1.0 pangocairo-1.0
WANTLIB += parserutils png pthread rsvg-2 ssl utf8proc wapcaplet
WANTLIB += webp z

MAKE_FLAGS +=		NETSURF_USE_HARU_PDF=NO \
			NETSURF_USE_LIBICONV_PLUG=NO \
			NETSURF_USE_RSVG=YES \
			NETSURF_USE_NSSVG=NO \
			NETSURF_USE_ROSPRITE=NO \
			NETSURF_USE_WEBP=YES \
			NETSURF_USE_MOZJS=NO \
			NETSURF_USE_JS=NO \
			NETSURF_GTK_RESOURCES=${WRKINST}${PREFIX}/share/netsurf/

post-patch:
	#https://bugs.netsurf-browser.org/mantis/view.php?id=2045
	cp ${WRKSRC}/frontends/gtk/res/options.gtk3.ui{,.unfixed}
	cd ${WRKSRC} && egrep translatable.*preferences frontends/gtk/res/options.gtk3.ui | \
		sed -e 's/.*>\(.*\)<.*/\1/' | while read c ; do \
		v=$$(egrep ^en\..*$$c: ${WRKSRC}/resources/FatMessages | cut -d : -f2 | sed -e 's/</\&lt;/g') ; \
		perl -pi -e "s#>$$c<#>$$v<#" ${WRKSRC}/frontends/gtk/res/options.gtk3.ui ; done
post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/netsurf-gtk.1 \
		${PREFIX}/man/man1/netsurf-gtk.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/frontends/gtk/res/netsurf-gtk.desktop \
		${PREFIX}/share/applications/netsurf.desktop
# bug in pkg_add -u prevents symlink->directory in pkg updates
	rm -rf ${PREFIX}/share/netsurf/C
	ln -s en ${PREFIX}/share/netsurf/C

.include <bsd.port.mk>
