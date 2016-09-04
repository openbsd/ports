# $OpenBSD: Makefile,v 1.1.1.1 2016/09/04 20:13:44 fcambus Exp $

COMMENT =	bitmap paint program inspired by Deluxe Paint and Brilliance

V =		2.4
DISTNAME =	grafx2-${V}.2035-src
PKGNAME =	grafx2-${V}
EXTRACT_SUFX =	.tgz

CATEGORIES =	graphics

HOMEPAGE =	http://pulkomandy.tk/projects/GrafX2

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	SDL SDL_image c m png pthread

MASTER_SITES =	http://pulkomandy.tk/projects/GrafX2/downloads/

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/sdl \
		devel/sdl-image

WRKDIST =	${WRKDIR}/grafx2/src

USE_GMAKE =	Yes

MAKE_FLAGS =	NOLUA=1 NOTTF=1

NO_TEST =	Yes

pre-configure:
	@sed -i 's|CC = gcc|CC ?= gcc|' ${WRKSRC}/Makefile
	@sed -i 's|Extract_path(program_dir, argv0);|strcpy(program_dir,"${PREFIX}/bin/");|' \
	${WRKSRC}/setup.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	mv ${PREFIX}/share/icons/grafx2.xpm ${PREFIX}/share/pixmaps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/grafx2/icons
	mv ${PREFIX}/share/icons/grafx2.svg ${PREFIX}/share/grafx2/icons/
	rmdir ${PREFIX}/share/icons
	rm -rf ${PREFIX}/share/grafx2/scripts
	rm ${PREFIX}/share/grafx2/fonts/Tuffy.ttf

.include <bsd.port.mk>
