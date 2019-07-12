# $OpenBSD: Makefile,v 1.9 2019/07/12 20:46:09 sthen Exp $

COMMENT =	Sony PlayStation Portable emulator

GH_ACCOUNT =	hrydgard
GH_PROJECT =	ppsspp
GH_TAGNAME =	v1.8.0

GLSLANG =	9983f99e87ab0b6608b236ea59bcf873f90e1435
PPSSPP_LANG =	18e0d460e187556e9510e2e9b5ae85fa435cefd9
SPIRV_CROSS =	be7425ef70231ab82930331959ab487d605d0482
ARMIPS =	7885552b208493a6a0f21663770c446c3ba65576

MASTER_SITES0 =	https://github.com/hrydgard/glslang/archive/
MASTER_SITES1 =	https://github.com/hrydgard/ppsspp-lang/archive/
MASTER_SITES2 =	https://github.com/hrydgard/SPIRV-Cross/archive/
MASTER_SITES3 =	https://github.com/Kingcom/armips/archive/

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		${GLSLANG}.tar.gz:0 \
		${PPSSPP_LANG}.tar.gz:1 \
		${SPIRV_CROSS}.tar.gz:2 \
		${ARMIPS}.tar.gz:3

CATEGORIES =	emulators

HOMEPAGE =	https://www.ppsspp.org/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE =	Yes

DIST_SUBDIR =	ppsspp

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL GLEW GLU SDL2 avcodec avformat avutil c m snappy
WANTLIB += swresample swscale z zip

MODULES =		devel/cmake
LIB_DEPENDS =		archivers/snappy \
			archivers/libzip \
			devel/sdl2 \
			graphics/ffmpeg \
			graphics/glew
COMPILER =		base-clang ports-gcc

CONFIGURE_ARGS =	-DCMAKE_CXX_FLAGS="-I${X11BASE}/include" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS}" \
			-DUSE_SYSTEM_FFMPEG=ON \
			-DUSE_SYSTEM_LIBZIP=ON \
			-DUSE_SYSTEM_SNAPPY=ON \
			-DUSE_DISCORD=OFF \
			-DUSING_EGL=OFF

NO_TEST =		Yes

post-extract:
	rmdir	${WRKSRC}/assets/lang \
		${WRKSRC}/ext/armips \
		${WRKSRC}/ext/glslang \
		${WRKSRC}/ext/SPIRV-Cross
	ln -s ${WRKDIR}/ppsspp-lang-${PPSSPP_LANG} ${WRKSRC}/assets/lang
	ln -s ${WRKDIR}/armips-${ARMIPS} ${WRKSRC}/ext/armips
	ln -s ${WRKDIR}/glslang-${GLSLANG} ${WRKSRC}/ext/glslang
	ln -s ${WRKDIR}/SPIRV-Cross-${SPIRV_CROSS} ${WRKSRC}/ext/SPIRV-Cross

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt ${WRKSRC}/UI/NativeApp.cpp

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/PPSSPPSDL ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/ppsspp
	cp -LR ${WRKSRC}/assets ${PREFIX}/share/ppsspp

.include <bsd.port.mk>
