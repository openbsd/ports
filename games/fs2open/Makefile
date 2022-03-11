# Requires OpenGL>=3.2, could run on powerpc64 once there is drm support
ONLY_FOR_ARCHS =	aarch64 amd64 i386

COMMENT =	open source game engine based on FreeSpace 2

V =		21.4.1
DISTNAME =	fs2open-${V}
GH_ACCOUNT =	scp-fs2open
GH_PROJECT =	fs2open.github.com
GH_TAGNAME =	release_${V:S/./_/g}

CATEGORIES =	games

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# Volition custom license (non-commercial, not really a license)
PERMIT_PACKAGE =	no license at all
PERMIT_DISTFILES =	no license at all

# if running with vulkan backend, dlopen's vulkan in vulkan.hpp
WANTLIB += ${COMPILER_LIBCXX} SDL2 avcodec avformat avutil c freetype
WANTLIB += jansson jpeg ${MODLUA_WANTLIB} m openal png swresample swscale
WANTLIB += vulkan z

RPAVLIK_CMAKE_MOD =	7cef9577d6fc35057ea57f46b4986a8a28aeff50
LIBROCKET =		ecd648a43aff8a9f3daf064d75ca5725237d5b38

MASTER_SITES0 =	https://github.com/asarium/cmake-modules/archive/
MASTER_SITES1 =	https://github.com/asarium/libRocket/archive/

DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			${RPAVLIK_CMAKE_MOD}.tar.gz:0 \
			${LIBROCKET}.tar.gz:1

DIST_SUBDIR =		fs2open-${V}

# c++11
COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake \
			lang/lua
LIB_DEPENDS =		audio/openal \
			devel/sdl2 \
			graphics/ffmpeg \
			graphics/png \
			graphics/vulkan-loader \
			devel/jansson

CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX=${LOCALBASE}/share/fs2open \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=On

# currently not building; would be ${WRKBUILD}/bin/unittests
NO_TEST =		Yes

# remove bundled SDL
post-extract:
	rm -rf	${WRKSRC}/lib/libsdl
	rmdir	${WRKSRC}/cmake/external/rpavlik-cmake-modules
	ln -s	${WRKDIR}/cmake-modules-${RPAVLIK_CMAKE_MOD} \
		${WRKSRC}/cmake/external/rpavlik-cmake-modules
	rmdir	${WRKSRC}/lib/libRocket
	ln -s	${WRKDIR}/libRocket-${LIBROCKET} \
		${WRKSRC}/lib/libRocket

do-gen:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

post-install:
	${SUBST_CMD} -c -m 755 ${FILESDIR}/fs2open ${PREFIX}/bin/fs2open

.include <bsd.port.mk>
