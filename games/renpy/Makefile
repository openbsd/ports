# $OpenBSD: Makefile,v 1.9 2014/08/21 00:49:16 bentley Exp $

COMMENT =		visual novel engine

V =			6.17.7
MODPY_EGG_VERSION =	${V}.521
DISTNAME =		renpy-${V}-source
PKGNAME =		${DISTNAME:S/-source//}

CATEGORIES =		games

HOMEPAGE =		http://www.renpy.org/

# mostly MIT, some files LGPLv2.1+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=		GLEW SDL avcodec avformat avresample avutil freetype fribidi
WANTLIB +=		m png pthread swscale z ${MODPY_WANTLIB}

MASTER_SITES =		http://www.renpy.org/dl/${V}/
EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python
BUILD_DEPENDS =		devel/pygame \
			lang/cython
RUN_DEPENDS =		devel/pygame \
			x11/gnome/zenity
LIB_DEPENDS =		devel/fribidi \
			graphics/ffmpeg>=20131216p0 \
			graphics/glew

MAKE_ENV =		RENPY_DEPS_INSTALL=/usr::${LOCALBASE}::${X11BASE}

NO_TEST =		Yes

WRKSRC =		${WRKDIST}/module

MODPY_ADJ_FILES =	../renpy.py

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/renpy
	cd ${WRKDIST} && \
	cp -r launcher renpy templates the_question tutorial LICENSE.txt \
		${PREFIX}/share/renpy
	${INSTALL_SCRIPT} ${WRKDIST}/renpy.py ${PREFIX}/share/renpy
	${SUBST_PROGRAM} ${FILESDIR}/renpy ${PREFIX}/bin/renpy

.include <bsd.port.mk>
