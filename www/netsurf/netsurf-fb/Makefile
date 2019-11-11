# $OpenBSD: Makefile,v 1.12 2019/11/11 03:21:56 bentley Exp $

COMMENT =		lightweight web browser, with SDL interface

NETSURF_PROJECT =	netsurf-fb
NETSURF_VERSION =	3.9
DISTNAME =		netsurf-${NETSURF_VERSION}-src
REVISION =		0

HOMEPAGE =		https://www.netsurf-browser.org/
MASTER_SITES =		https://download.netsurf-browser.org/netsurf/releases/source/

BUILD_DEPENDS =		editors/vim \
			www/netsurf/nsgenbind>=0.4 \
			www/p5-HTML-Parser
LIB_DEPENDS =		devel/sdl \
			graphics/jpeg \
			graphics/libwebp \
			graphics/png \
			www/netsurf/hubbub>=0.3.4 \
			www/netsurf/libcss>=0.7.0 \
			www/netsurf/libnsgif>=0.2.0 \
			www/netsurf/libnsbmp>=0.1.4 \
			www/netsurf/libnsfb>=0.1.6 \
			www/netsurf/libnslog \
			www/netsurf/libdom>=0.3.2 \
			www/netsurf/libnspsl>=0.1.2 \
			www/netsurf/libnsutils>=0.0.3 \
			www/netsurf/libsvgtiny>=0.1.6 \
			www/netsurf/libutf8proc>=1.3.1p0 \
			net/curl
TEST_DEPENDS =		devel/check

WANTLIB =  SDL c crypto css curl dom expat freetype hubbub iconv
WANTLIB += jpeg m nsbmp nsfb nsgif nslog nspsl nsutils parserutils png
WANTLIB += pthread ssl svgtiny utf8proc wapcaplet webp xcb xcb-icccm
WANTLIB += xcb-image xcb-keysyms xcb-shm xcb-util z

MAKE_FLAGS +=		NETSURF_USE_HARU_PDF=NO \
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
	${INSTALL_MAN} ${WRKSRC}/docs/netsurf-fb.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
