COMMENT =		traditional top-down car racing game

PKGNAME =		dustrac-${GH_TAGNAME}
REVISION =		3

GH_ACCOUNT =		juzzlin
GH_PROJECT =		DustRacing2D
GH_TAGNAME =		1.13.0

CATEGORIES =		games

HOMEPAGE =		https://juzzlin.github.io/DustRacing2D/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += GL GLU c m openal pthread vorbisfile
WANTLIB += Qt5Core Qt5Gui Qt5OpenGL Qt5Widgets Qt5Xml
WANTLIB += ${COMPILER_LIBCXX}

MODULES =		devel/cmake \
			x11/qt5
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

LIB_DEPENDS =		audio/libvorbis \
			audio/openal

CONFIGURE_ARGS +=	-DReleaseBuild=ON \
			-DDATA_PATH=${PREFIX}/share/dustrac \
			-DDOC_PATH=${PREFIX}/share/dustrac \
			-DQOpenGLFunctions=OFF

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

.include <bsd.port.mk>
