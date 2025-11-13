COMMENT =	Sony PlayStation Portable core for retroarch

PKGNAME =	libretro-ppsspp-$V

PPSSPP_SUBDIR_CONFIGURE_ARGS =	-DLIBRETRO=ON

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL GLEW GLU ICE SM X11 Xext avcodec avformat avutil
WANTLIB += m miniupnpc png snappy swresample swscale z zip zstd

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/libretro
	${INSTALL_PROGRAM} ${WRKBUILD}/lib/ppsspp_libretro.so \
		${PREFIX}/lib/libretro

.include <bsd.port.mk>
