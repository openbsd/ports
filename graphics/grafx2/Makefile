COMMENT =	bitmap paint program inspired by Deluxe Paint and Brilliance

V =		2.8
DISTNAME =	grafx2-${V}.3091-HEAD-src
PKGNAME =	grafx2-${V}
EXTRACT_SUFX =	.tgz

CATEGORIES =	graphics

HOMEPAGE =	https://pulkomandy.tk/projects/GrafX2

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB +=	SDL2 SDL2_image X11 c iconv m png tiff z ${MODLUA_WANTLIB}

MASTER_SITES =	https://pulkomandy.tk/projects/GrafX2/downloads/

MODULES =	lang/lua
MODLUA_VERSION = 5.3

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/sdl2 \
		devel/sdl2-image

WRKDIST =	${WRKDIR}/grafx2/src

USE_GMAKE =	Yes

CFLAGS +=	-D_BSD_SOURCE

MAKE_FLAGS =	CC="${CC}" PREFIX="${PREFIX}" API=sdl2 NOTTF=1 NORECOIL=1

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/main.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	mv ${PREFIX}/share/icons/hicolor/scalable/apps/grafx2.xpm \
		${PREFIX}/share/pixmaps/
	mv ${PREFIX}/bin/grafx2-sdl2 ${PREFIX}/bin/grafx2
	rm ${PREFIX}/share/grafx2/fonts/Tuffy.ttf

.include <bsd.port.mk>
