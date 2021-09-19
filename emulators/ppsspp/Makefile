# $OpenBSD: Makefile,v 1.17 2021/09/19 00:34:55 bentley Exp $

# See https://github.com/hrydgard/ppsspp/issues/8823
NOT_FOR_ARCHS =	${BE_ARCHS}

# FakeJit fallback broken in (at least) 1.10.3
# ppsspp-1.10.3/Core/MIPS/JitCommon/JitCommon.cpp:75:10: error: cannot initialize return object of type 'MIPSComp::JitInterface *' with an rvalue of type 'MIPSComp::FakeJit *'
PPSSPP_JIT_ARCHS =	arm aarch64 i386 amd64
ONLY_FOR_ARCHS =	${PPSSPP_JIT_ARCHS}

COMMENT =	Sony PlayStation Portable emulator

GH_ACCOUNT =	hrydgard
GH_PROJECT =	ppsspp
GH_TAGNAME =	v1.11.3

GLSLANG =	d0850f875ec392a130ccf00018dab458b546f27c
PPSSPP_LANG =	6bd5b4bc983917ea8402f73c726b46e36f3de0b4
SPIRV_CROSS =	a1f7c8dc8ea2f94443951ee27003bffa562c1f13
ARMIPS =	7885552b208493a6a0f21663770c446c3ba65576
MINIUPNP =	7e229ddd635933239583ab190d9b614bde018157

MASTER_SITES0 =	https://github.com/hrydgard/glslang/archive/
MASTER_SITES1 =	https://github.com/hrydgard/ppsspp-lang/archive/
MASTER_SITES2 =	https://github.com/hrydgard/SPIRV-Cross/archive/
MASTER_SITES3 =	https://github.com/Kingcom/armips/archive/
MASTER_SITES4 =	https://github.com/hrydgard/miniupnp/archive/

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		${GLSLANG}.tar.gz:0 \
		${PPSSPP_LANG}.tar.gz:1 \
		${SPIRV_CROSS}.tar.gz:2 \
		${ARMIPS}.tar.gz:3 \
		${MINIUPNP}.tar.gz:4

CATEGORIES =	emulators

HOMEPAGE =	https://www.ppsspp.org/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE =	Yes

DIST_SUBDIR =	ppsspp

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL GLEW GLU SDL2 avcodec avformat avutil c m png snappy
WANTLIB += swresample swscale z zip

MODULES =		devel/cmake \
			lang/python
MODPY_RUNDEP =		No

LIB_DEPENDS =		archivers/snappy \
			archivers/libzip \
			devel/sdl2 \
			graphics/ffmpeg \
			graphics/glew \
			graphics/png
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
		${WRKSRC}/ext/SPIRV-Cross \
		${WRKSRC}/ext/miniupnp
	ln -s ${WRKDIR}/ppsspp-lang-${PPSSPP_LANG} ${WRKSRC}/assets/lang
	ln -s ${WRKDIR}/armips-${ARMIPS} ${WRKSRC}/ext/armips
	ln -s ${WRKDIR}/glslang-${GLSLANG} ${WRKSRC}/ext/glslang
	ln -s ${WRKDIR}/SPIRV-Cross-${SPIRV_CROSS} ${WRKSRC}/ext/SPIRV-Cross
	ln -s ${WRKDIR}/miniupnp-${MINIUPNP} ${WRKSRC}/ext/miniupnp

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt ${WRKSRC}/UI/NativeApp.cpp

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/PPSSPPSDL ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/ppsspp
	cp -LR ${WRKSRC}/assets ${PREFIX}/share/ppsspp

.include <bsd.port.mk>
