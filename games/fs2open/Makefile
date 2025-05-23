# Requires OpenGL>=3.2, could run on powerpc64 once there is drm support
ONLY_FOR_ARCHS =	aarch64 amd64 i386

COMMENT =	open source game engine based on FreeSpace 2

V =		24.2.0
PKGNAME =	fs2open-${V}

CATEGORIES =	games

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# Volition custom license (non-commercial, not really a license)
PERMIT_PACKAGE =	no license at all
PERMIT_DISTFILES =	no license at all

# GL is dlopen'd
WANTLIB += ${COMPILER_LIBCXX} GL SDL2 avcodec avformat avutil c freetype iconv
WANTLIB += jansson jpeg ${MODLUA_WANTLIB} m openal png swresample swscale
WANTLIB += usb-1.0 z

DIST_TUPLE +=	github scp-fs2open fs2open.github.com release_${V:S/./_/g} .
DIST_TUPLE +=	github asarium cmake-modules \
		7cef9577d6fc35057ea57f46b4986a8a28aeff50 \
		cmake/external/rpavlik-cmake-modules # Boost License 1.0
DIST_TUPLE +=	github asarium libRocket \
		ecd648a43aff8a9f3daf064d75ca5725237d5b38 \
		lib/libRocket # MIT

# c++11
COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake \
			lang/lua
LIB_DEPENDS =		audio/openal \
			devel/jansson \
			devel/libusb1 \
			devel/sdl2 \
			graphics/ffmpeg \
			graphics/png

CXXFLAGS +=		-I${X11BASE}/include -I${LOCALBASE}/include
MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX=${LOCALBASE}/share/fs2open \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

CONFIGURE_ENV +=	C_OPT_FLAG_DEBUG="${CFLAGS}" \
			C_OPT_FLAG_RELEASE="${CFLAGS}" \
			CXX_OPT_FLAG_DEBUG="${CXXFLAGS}" \
			CXX_OPT_FLAG_RELEASE="${CXXFLAGS}"

# currently not building; would be ${WRKBUILD}/bin/unittests
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/fs2open.github.com-release_${V:S/./_/g}

do-gen:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

post-install:
	${SUBST_CMD} -c -m 755 ${FILESDIR}/fs2open ${PREFIX}/bin/fs2open

.include <bsd.port.mk>
