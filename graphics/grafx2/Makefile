# $OpenBSD: Makefile,v 1.11 2020/04/15 13:31:42 fcambus Exp $

COMMENT =	bitmap paint program inspired by Deluxe Paint and Brilliance

V =		2.7
DISTNAME =	grafx2-${V}.2945-src
PKGNAME =	grafx2-${V}
EXTRACT_SUFX =	.tgz
REVISION =	0

CATEGORIES =	graphics

HOMEPAGE =	https://pulkomandy.tk/projects/GrafX2

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB +=	SDL2 SDL2_image X11 c iconv m png tiff z ${MODLUA_WANTLIB}

MASTER_SITES =	https://gitlab.com/GrafX2/grafX2/-/jobs/422881812/artifacts/raw/

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
