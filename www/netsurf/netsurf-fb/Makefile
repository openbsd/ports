# $OpenBSD: Makefile,v 1.1.1.1 2016/09/01 00:29:34 bentley Exp $

COMMENT =		lightweight web browser, with SDL interface

NETSURF_PROJECT =	netsurf-fb
NETSURF_VERSION =	3.5
DISTNAME =		netsurf-${NETSURF_VERSION}-src

HOMEPAGE=		http://www.netsurf-browser.org/
MASTER_SITES =		http://download.netsurf-browser.org/netsurf/releases/source/

MODULES =		devel/gettext

BUILD_DEPENDS =		www/netsurf/nsgenbind \
			www/p5-HTML-Parser
LIB_DEPENDS =		devel/sdl \
			graphics/jpeg \
			graphics/png \
			www/netsurf/hubbub>=0.3.3 \
			www/netsurf/libcss>=0.6.0 \
			www/netsurf/libnsgif>=0.1.3 \
			www/netsurf/libnsbmp>=0.1.3 \
			www/netsurf/libnsfb \
			www/netsurf/libdom>=0.3.0 \
			www/netsurf/libnsutils>=0.0.2 \
			www/netsurf/libsvgtiny \
			www/netsurf/libutf8proc>=1.3.1 \
			net/curl
TEST_DEPENDS =		devel/check

WANTLIB += SDL c crypto css curl dom expat freetype hubbub jpeg m
WANTLIB += nsbmp nsfb nsgif nsutils parserutils png pthread ssl
WANTLIB += svgtiny utf8proc wapcaplet xcb xcb-icccm xcb-image
WANTLIB += xcb-keysyms xcb-shm xcb-util z

MAKE_FLAGS +=		CC="${CC}" \
			NETSURF_USE_HARU_PDF=NO \
			NETSURF_USE_LIBICONV_PLUG=NO \
			NETSURF_USE_ROSPRITE=NO \
			NETSURF_USE_WEBP=YES \
			NETSURF_USE_MOZJS=NO \
			NETSURF_USE_JS=NO \
			NETSURF_USE_RSVG=NO \
			NETSURF_USE_NSSVG=YES \
			NETSURF_FB_FONTLIB=freetype \
			NETSURF_FB_RESPATH=${PREFIX}/share/netsurf-fb/ \
			NETSURF_FB_FONTPATH=${X11BASE}/lib/X11/fonts/TTF \
			NETSURF_FRAMEBUFFER_RESOURCES=${WRKINST}${PREFIX}/share/netsurf-fb/ \
			TARGET=framebuffer

post-install:
	mv ${PREFIX}/bin/netsurf ${PREFIX}/bin/netsurf-fb
	${INSTALL_MAN} ${WRKSRC}/Docs/netsurf-fb.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
