# See https://github.com/hrydgard/ppsspp/issues/8823
NOT_FOR_ARCHS =	${BE_ARCHS}

# FakeJit fallback broken in (at least) 1.10.3
# ppsspp-1.10.3/Core/MIPS/JitCommon/JitCommon.cpp:75:10: error: cannot initialize return object of type 'MIPSComp::JitInterface *' with an rvalue of type 'MIPSComp::FakeJit *'
PPSSPP_JIT_ARCHS =	aarch64 amd64 arm i386
ONLY_FOR_ARCHS =	${PPSSPP_JIT_ARCHS}

V =		1.15.4
DISTNAME =	ppsspp-$V

COMMENT =	Sony PlayStation Portable emulator

EXTRACT_SUFX =	.tar.xz

MASTER_SITES =	https://github.com/hrydgard/ppsspp/releases/download/v$V/

CATEGORIES =	emulators

HOMEPAGE =	https://www.ppsspp.org/

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

CONFIGURE_ARGS =	-DUSE_SYSTEM_FFMPEG=ON \
			-DUSE_SYSTEM_LIBZIP=ON \
			-DUSE_SYSTEM_SNAPPY=ON \
			-DUSE_DISCORD=OFF \
			-DUSING_EGL=OFF

CXXFLAGS +=	-I${X11BASE}/include

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt ${WRKSRC}/UI/NativeApp.cpp

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/PPSSPPSDL ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/ppsspp
	cp -LR ${WRKSRC}/assets ${PREFIX}/share/ppsspp

.include <bsd.port.mk>
