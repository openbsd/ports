# $OpenBSD: Makefile,v 1.8 2019/07/12 20:47:00 sthen Exp $

COMMENT =	bitmap paint program inspired by Deluxe Paint and Brilliance

V =		2.6
DISTNAME =	grafX2-v${V}
PKGNAME =	grafx2-${V}
EXTRACT_SUFX =	.tar.bz2

CATEGORIES =	graphics

HOMEPAGE =	https://pulkomandy.tk/projects/GrafX2

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

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

WRKDIST =	${WRKDIR}/grafX2-v${V}/src

USE_GMAKE =	Yes

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS} -D_BSD_SOURCE" \
		PREFIX="${PREFIX}" API=sdl2 NOTTF=1 NORECOIL=1

NO_TEST =	Yes

pre-configure:
	rm ${WRKSRC}/Makefile.dep
	@sed -i 's|Extract_path(program_dir, argv0);|strcpy(program_dir,"${PREFIX}/bin/");|' \
	${WRKSRC}/setup.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	mv ${PREFIX}/share/icons/hicolor/scalable/apps/grafx2.xpm ${PREFIX}/share/pixmaps/
	mv ${PREFIX}/bin/grafx2-sdl2 ${PREFIX}/bin/grafx2
	rm ${PREFIX}/share/grafx2/fonts/Tuffy.ttf

.include <bsd.port.mk>
