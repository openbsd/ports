# $OpenBSD: Makefile,v 1.6 2013/06/04 18:41:44 naddy Exp $

COMMENT =		visual novel engine

V =			6.14.1
MODPY_EGG_VERSION =	${V}.366
DISTNAME =		renpy-${V}-source
PKGNAME =		${DISTNAME:S/-source//}
REVISION =		1

CATEGORIES =		games

HOMEPAGE =		http://www.renpy.org/

# mostly MIT, some files LGPLv2.1+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=		GLEW SDL avcodec avformat avutil freetype fribidi m
WANTLIB +=		png pthread ${MODPY_WANTLIB} swscale z

MASTER_SITES =		http://www.renpy.org/dl/${V}/
EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python
BUILD_DEPENDS =		devel/pygame
RUN_DEPENDS =		devel/pygame \
			x11/gnome/zenity
LIB_DEPENDS =		devel/fribidi \
			graphics/ffmpeg \
			graphics/glew

MAKE_ENV =		RENPY_DEPS_INSTALL=/usr::${LOCALBASE}::${X11BASE}

NO_TEST =		Yes

WRKSRC =		${WRKDIST}/module

MODPY_ADJ_FILES =	../renpy.py

pre-install:
	rm ${WRKDIST}/launcher/game/project.rpy.orig
	${INSTALL_DATA_DIR} ${PREFIX}/share/renpy
	cd ${WRKDIST} && \
	cp -r launcher renpy common template the_question tutorial LICENSE.txt \
		${PREFIX}/share/renpy
	${INSTALL_SCRIPT} ${WRKDIST}/renpy.py ${PREFIX}/share/renpy
	${SUBST_CMD} -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} -c \
		${FILESDIR}/renpy ${PREFIX}/bin/renpy

.include <bsd.port.mk>
