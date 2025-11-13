COMMENT =	Sony PlayStation Portable emulator

PKGNAME =	ppsspp-$V
REVISION =	0

PPSSPP_SUBDIR_LIB_DEPENDS =	devel/sdl2-ttf

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL GLEW GLU ICE SDL2 SDL2_ttf SM X11 Xext avcodec avformat
WANTLIB += avutil c fontconfig m miniupnpc png snappy swresample
WANTLIB += swscale z zip zstd

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

pre-configure:
	${SUBST_CMD} ${WRKSRC}/UI/NativeApp.cpp

.include <bsd.port.mk>
