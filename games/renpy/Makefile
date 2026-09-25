COMMENT =	visual novel engine

V =		8.5.3
DISTNAME =	renpy-${V}-source
PKGNAME =	renpy-${V}

CATEGORIES =	games

HOMEPAGE =	https://www.renpy.org/

# mostly MIT, some files LGPLv2.1+; see LICENSE.txt
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_image assimp avcodec avformat
WANTLIB += avutil freetype fribidi harfbuzz jpeg m png pthread
WANTLIB += swresample swscale z

COMPILER =	base-clang ports-gcc

SITES =		https://www.renpy.org/dl/${V}/
EXTRACT_SUFX =	.tar.bz2

MODULES =	lang/python

BUILD_DEPENDS =	lang/cython \
		devel/py-setuptools

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/py-six \
		security/py-ecdsa \
		security/py-pefile \
		www/py-legacy-cgi \
		www/py-requests \
		x11/Xdialog

LIB_DEPENDS =	devel/fribidi \
		devel/harfbuzz \
		devel/sdl2 \
		devel/sdl2-image \
		graphics/ffmpeg \
		graphics/jpeg \
		multimedia/assimp

MAKE_ENV =	RENPY_CYTHON=cython

MODPY_ADJ_FILES =	renpy.py

NO_TEST =	Yes

# setup.py derives CFLAGS and LDFLAGS from pkg-config, but never CXXFLAGS,
# so the single C++ module (renpy.gl2.assimp) misses the SDL2 include path.
# CPPFLAGS is appended to both the C and C++ compile lines, preserving the
# flags python's sysconfig provides. Fixed properly upstream after 8.5.
_PC_PACKAGES =	assimp libavformat libavcodec libavutil libswresample \
		libswscale harfbuzz freetype2 fribidi sdl2

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		CPPFLAGS="$$(pkg-config --cflags ${_PC_PACKAGES})" \
		${MODPY_BIN} setup.py build_ext --inplace -j${MAKE_JOBS}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/renpy
	cd ${WRKSRC} && cp -R _renpy*.so gui launcher renpy sdk-fonts \
		the_question tutorial LICENSE.txt ${PREFIX}/share/renpy/
	find ${PREFIX}/share/renpy -name '*.${PATCHORIG}' -delete
	${INSTALL_SCRIPT} ${WRKSRC}/renpy.py ${PREFIX}/share/renpy
	${SUBST_PROGRAM} ${FILESDIR}/renpy ${PREFIX}/bin/renpy
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/renpy.desktop \
		${PREFIX}/share/applications/renpy.desktop
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/launcher/game/images/logo32.png \
		${PREFIX}/share/pixmaps/renpy.png

.include <bsd.port.mk>
