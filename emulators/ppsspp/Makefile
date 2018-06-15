# $OpenBSD: Makefile,v 1.4 2018/06/15 08:12:31 bentley Exp $

COMMENT =	Sony PlayStation Portable emulator

GH_ACCOUNT =	hrydgard
GH_PROJECT =	ppsspp
GH_TAGNAME =	v1.6.3

GLSLANG =	2edde6665d9a56ead5ea0e55b4e64d9a803e6164
PPSSPP_LANG =	1153a4293006db9d2a6e701df72df843b98234b5
SPIRV_CROSS =	90966d50f57608587bafd95b4e345b02b814754a
ARMIPS =	0.9
TINYFORMAT =	b7f5a22753c81d834ab5133d655f1fd525280765

MASTER_SITES0 =	https://github.com/hrydgard/glslang/archive/
MASTER_SITES1 =	https://github.com/hrydgard/ppsspp-lang/archive/
MASTER_SITES2 =	https://github.com/hrydgard/SPIRV-Cross/archive/
MASTER_SITES3 =	https://github.com/Kingcom/armips/archive/
MASTER_SITES4 =	https://github.com/Kingcom/tinyformat/archive/

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		${GLSLANG}.tar.gz:0 \
		${PPSSPP_LANG}.tar.gz:1 \
		${SPIRV_CROSS}.tar.gz:2 \
		v${ARMIPS}.tar.gz:3 \
		${TINYFORMAT}.tar.gz:4

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

CONFIGURE_ARGS =	-DUSE_SYSTEM_FFMPEG=ON \
			-DCMAKE_CXX_FLAGS="-I${X11BASE}/include" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS}" \
			-DUSE_SYSTEM_LIBZIP=ON

NO_TEST =		Yes

post-extract:
	rmdir	${WRKSRC}/assets/lang \
		${WRKSRC}/ext/armips \
		${WRKSRC}/ext/glslang \
		${WRKSRC}/ext/SPIRV-Cross \
		${WRKDIR}/armips-${ARMIPS}/ext/tinyformat
	ln -s ${WRKDIR}/ppsspp-lang-${PPSSPP_LANG} ${WRKSRC}/assets/lang
	ln -s ${WRKDIR}/armips-${ARMIPS} ${WRKSRC}/ext/armips
	ln -s ${WRKDIR}/glslang-${GLSLANG} ${WRKSRC}/ext/glslang
	ln -s ${WRKDIR}/SPIRV-Cross-${SPIRV_CROSS} ${WRKSRC}/ext/SPIRV-Cross
	ln -s ${WRKDIR}/tinyformat-${TINYFORMAT} \
		${WRKDIR}/armips-${ARMIPS}/ext/tinyformat

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt ${WRKSRC}/UI/NativeApp.cpp

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/PPSSPPSDL ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/ppsspp
	cp -LR ${WRKSRC}/assets ${PREFIX}/share/ppsspp

.include <bsd.port.mk>
