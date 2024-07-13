COMMENT =	open source, classic overhead run-and-gun game
CATEGORIES =	games x11

HOMEPAGE =	https://cxong.github.io/cdogs-sdl/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += GL GLU SDL2 SDL2_image SDL2_mixer c m

GH_ACCOUNT =	cxong
GH_PROJECT =	cdogs-sdl
GH_TAGNAME =	2.1.0

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2-image \
		devel/sdl2-mixer

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

# CDOGS_DATA_DIR must end in a slash, because it is prepended to relative paths
# in the C code
CONFIGURE_ARGS =	-DCDOGS_BIN_DIR=${PREFIX}/bin \
			-DCDOGS_DATA_DIR=${PREFIX}/share/cdogs-sdl/ \
			-DCDOGS_DOC_DIR=${PREFIX}/share/doc/cdogs-sdl \
			-DDATA_INSTALL_DIR=${PREFIX}/share/cdogs-sdl

DEBUG_PACKAGES = ${BUILD_PACKAGES}

post-build:
	@cp ${WRKBUILD}/src/cdogs-sdl ${WRKSRC}/src/cdogs-sdl
	@cp ${WRKBUILD}/src/cdogs-sdl-editor ${WRKSRC}/src/cdogs-sdl-editor

.include <bsd.port.mk>
