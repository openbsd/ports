BROKEN-sparc64 = error: runtime_error is not a member of std

COMMENT =		traditional top-down car racing game

PKGNAME =		dustrac-${GH_TAGNAME}

GH_ACCOUNT =		juzzlin
GH_PROJECT =		DustRacing2D
GH_TAGNAME =		2.2.0

CATEGORIES =		games

HOMEPAGE =		https://juzzlin.github.io/DustRacing2D/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += GL c m openal pthread vorbisfile
WANTLIB += Qt6Core Qt6Gui Qt6OpenGL Qt6Sql Qt6Widgets Qt6Xml
WANTLIB += ${COMPILER_LIBCXX}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODULES =		devel/cmake \
			x11/qt6
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

LIB_DEPENDS =		audio/libvorbis \
			audio/openal

CONFIGURE_ARGS +=	-DReleaseBuild=ON \
			-DDATA_PATH=${PREFIX}/share/dustrac \
			-DDOC_PATH=${PREFIX}/share/dustrac \
			-DQOpenGLFunctions=OFF

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib


MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

.include <bsd.port.mk>
