# Requires OpenGL>=3.2, could run on powerpc64 once there is drm support
ONLY_FOR_ARCHS =	aarch64 amd64 i386

COMMENT =	open source game engine based on FreeSpace 2

V =		26.0.1
PKGNAME =	fs2open-${V}

CATEGORIES =	games

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# Volition custom license (non-commercial, not really a license)
PERMIT_PACKAGE =	no license at all
PERMIT_DISTFILES =	no license at all

# GL is dlopen'd
WANTLIB += ${COMPILER_LIBCXX} GL SDL2 avcodec avformat avutil c freetype iconv
WANTLIB += jansson jpeg ${MODLUA_WANTLIB} m openal png swresample swscale
WANTLIB += usb-1.0 vulkan z

DIST_TUPLE +=	github scp-fs2open fs2open.github.com release_${V:S/./_/g} .
DIST_TUPLE +=	github asarium cmake-modules \
		7cef9577d6fc35057ea57f46b4986a8a28aeff50 \
		cmake/external/rpavlik-cmake-modules # Boost License 1.0
DIST_TUPLE +=	github asarium libRocket \
		b0c18e17d257a46db8395485895185915f483ede \
		lib/libRocket # MIT

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake \
			lang/lua
LIB_DEPENDS =		audio/openal \
			devel/jansson \
			devel/libusb1 \
			devel/sdl2 \
			graphics/ffmpeg \
			graphics/png \
			graphics/vulkan-loader

CXXFLAGS +=		-I${X11BASE}/include -I${LOCALBASE}/include
MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX=${LOCALBASE}/share/fs2open \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DFSO_BUILD_WITH_DISCORD=OFF \
			-DFSO_BUILD_WITH_OPENXR=OFF \
			-DFSO_BUILD_WITH_VULKAN=ON

# currently not building; would be ${WRKBUILD}/bin/unittests
NO_TEST =		Yes

CXXFLAGS +=		-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/SDL2

WRKDIST =		${WRKDIR}/fs2open.github.com-release_${V:S/./_/g}

do-gen:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

# remove share/fs2open/lib which only holds an unneeded static library
post-install:
	${SUBST_CMD} -c -m 755 ${FILESDIR}/fs2open ${PREFIX}/bin/fs2open
	rm -rf ${PREFIX}/share/fs2open/lib/

.include <bsd.port.mk>
