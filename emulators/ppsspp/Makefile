# $OpenBSD: Makefile,v 1.7 2019/03/07 07:22:19 bentley Exp $

COMMENT =	Sony PlayStation Portable emulator

GH_ACCOUNT =	hrydgard
GH_PROJECT =	ppsspp
GH_TAGNAME =	v1.7.1

GLSLANG =	29619b2312f7bc862221749f3f4d37c3e6a0dee2
PPSSPP_LANG =	f60be494a43a49fd7ff61603e132c1e24c160d88
SPIRV_CROSS =	be7425ef70231ab82930331959ab487d605d0482
ARMIPS =	9efe3367284d2d1eeb14fc302a2c12c36e3e255e

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
PERMIT_PACKAGE_CDROM =	Yes

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
