# $OpenBSD: Makefile,v 1.15 2020/03/12 17:47:08 bcallah Exp $

COMMENT =		visual novel engine

V =			7.3.5
MODPY_EGG_VERSION =	${V}.606
DISTNAME =		renpy-${V}-source
PKGNAME =		renpy-${V}

CATEGORIES =		games

HOMEPAGE =		https://www.renpy.org/

# mostly MIT, some files LGPLv2.1+
PERMIT_PACKAGE =		Yes

WANTLIB += GLEW SDL2 avcodec avformat avresample avutil freetype
WANTLIB += m png pthread swresample swscale z ${MODPY_WANTLIB}

MASTER_SITES =		https://www.renpy.org/dl/${V}/
EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python

BUILD_DEPENDS =		devel/pygame \
			games/pygame_sdl2 \
			lang/cython

RUN_DEPENDS =		games/pygame_sdl2 \
			x11/gnome/zenity

# XXX enable fribidi support
LIB_DEPENDS =		graphics/ffmpeg \
			graphics/glew

MAKE_ENV =		RENPY_DEPS_INSTALL=/usr::${LOCALBASE}::${X11BASE}

CFLAGS +=		-I/usr/X11R6/include

NO_TEST =		Yes

WRKSRC =		${WRKDIST}/module

# XXX not needed in newer releases
MODPY_ADJ_FILES =	../renpy.py

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/renpy
	cd ${WRKDIST} && \
	cp -r launcher renpy the_question tutorial LICENSE.txt \
		${PREFIX}/share/renpy
	${INSTALL_SCRIPT} ${WRKDIST}/renpy.py ${PREFIX}/share/renpy
	${SUBST_PROGRAM} ${FILESDIR}/renpy ${PREFIX}/bin/renpy
	${SUBST_PROGRAM} ${FILESDIR}/renpyify ${PREFIX}/bin/renpyify

.include <bsd.port.mk>
