COMMENT =		programmers solid 3D CAD modeller

V =			2025.10.14
DISTNAME =		openscad-${V}

CATEGORIES =		cad

HOMEPAGE =		https://www.openscad.org/

# AGPL-3.0
PERMIT_PACKAGE =	Yes

GH_ACCOUNT =	openscad
GH_PROJECT =	openscad
GH_COMMIT =	b0f18e9b4d61288b2cd6c659135f7e77def179e0

MCAD_COMMIT =	1ea402208c3127ffb443931e9bb1681c191dacca
SITES.mcad =	https://github.com/${GH_ACCOUNT}/MCAD/archive/

DISTFILES.mcad =	MCAD-${MCAD_COMMIT:C/(........).*/\1/}{${MCAD_COMMIT}}${EXTRACT_SUFX}

MODULES =		devel/cmake \
			lang/python \
			x11/qt6

WANTLIB += ${COMPILER_LIBCXX} 3mf Clipper2 EGL GL GLEW GLU Qt6Concurrent
WANTLIB += Qt6Core Qt6Core5Compat Qt6DBus Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6OpenGL Qt6OpenGLWidgets Qt6Svg Qt6Widgets
WANTLIB += boost_atomic-mt boost_filesystem-mt boost_program_options-mt
WANTLIB += boost_regex-mt boost_system-mt c cairo double-conversion
WANTLIB += fontconfig freetype glib-2.0 gmp gmpxx harfbuzz intl
WANTLIB += m manifold mpfr opencsg qscintilla2_qt6 tbb xml2 zip

# Match devel/boost
COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/bison \
			devel/gettext,-tools \
			devel/sanitizers-cmake \
			graphics/glslang \
			graphics/ImageMagick \
			graphics/shaderc \
			graphics/vulkan-tools \
			math/cgal \
			math/eigen3 \
			shells/bash \
			x11/xkbcommon

TEST_DEPENDS =		graphics/py-Pillow

LIB_DEPENDS =		archivers/libzip \
			cad/clipper2 \
			cad/lib3mf \
			cad/manifold \
			devel/boost \
			devel/gettext \
			devel/glib2 \
			devel/gmp \
			devel/gmp,-cxx \
			devel/mpfr \
			devel/tbb \
			editors/qscintilla,qt6 \
			graphics/glew \
			graphics/opencsg \
			x11/qt6/qt5compat \
			x11/qt6/qtbase \
			x11/qt6/qtmultimedia \
			x11/qt6/qtsvg

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			net/curl \
			x11/gtk+4,-guic


BUILD_DEPENDS +=	${RUN_DEPENDS}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# Make about say the "right" thing
CONFIGURE_ARGS +=	-DOPENSCAD_VERSION=${V}

# OpenSCAD uses the program_location (see patch-src_openscad_cc) to
# figure out resource paths, but on OpenBSD that doesn't work when
# launched from the PATH.
# In post-install we add a shell script shim to provide the full path.
CONFIGURE_ARGS +=	-DCMAKE_INSTALL_BINDIR=${PREFIX}/libexec

# Don't use the included stuff, use ours
CONFIGURE_ARGS +=	-DUSE_BUILTIN_CLIPPER2=OFF \
			-DUSE_BUILTIN_MANIFOLD=OFF

# Our QT6 port is more stable
CONFIGURE_ARGS +=	-DUSE_QT6=ON

# It might be faster, but at what cost?
CONFIGURE_ARGS +=	-DUSE_MIMALLOC=OFF

# I don't know how link in comms/libhidapi
CONFIGURE_ARGS +=	-DENABLE_HIDAPI=OFF

# We don't have SpNav. Disable in case it get's ported.
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_SpNav=ON

TEST_IS_INTERACTIVE =	X11

post-extract:
	rmdir ${WRKSRC}/libraries/MCAD
	cp -a ${WRKDIR}/MCAD-${MCAD_COMMIT} ${WRKSRC}/libraries/MCAD

post-install:
	${SUBST_PROGRAM} ${FILESDIR}/openscad ${PREFIX}/bin/openscad
	${MODPY_COMPILEALL} ${PREFIX}/share/openscad/libraries/MCAD/

.include <bsd.port.mk>
