# $OpenBSD: Makefile,v 1.2 2016/11/30 07:35:00 bentley Exp $

COMMENT =		lightweight web browser, with SDL interface

NETSURF_PROJECT =	netsurf-fb
NETSURF_VERSION =	3.6
DISTNAME =		netsurf-${NETSURF_VERSION}-src

HOMEPAGE=		http://www.netsurf-browser.org/
MASTER_SITES =		http://download.netsurf-browser.org/netsurf/releases/source/

MODULES =		devel/gettext

BUILD_DEPENDS =		www/netsurf/nsgenbind>=0.4 \
			www/p5-HTML-Parser
LIB_DEPENDS =		devel/sdl \
			graphics/jpeg \
			graphics/png \
			www/netsurf/hubbub>=0.3.3 \
			www/netsurf/libcss>=0.6.1 \
			www/netsurf/libnsgif>=0.1.4 \
			www/netsurf/libnsbmp>=0.1.4 \
			www/netsurf/libnsfb>=0.1.5 \
			www/netsurf/libdom>=0.3.1 \
			www/netsurf/libnsutils>=0.0.3 \
			www/netsurf/libsvgtiny>=0.1.5 \
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
	${INSTALL_MAN} ${WRKSRC}/Docs/netsurf-fb.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
