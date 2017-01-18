# $OpenBSD: Makefile,v 1.9 2017/01/18 07:23:18 landry Exp $

COMMENT =		traditional top-down car racing game

V =			1.12.0
DISTNAME =		dustrac-$V
REVISION =		0

CATEGORIES =		games

HOMEPAGE =		https://juzzlin.github.io/DustRacing2D/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU X11 c m openal pthread vorbisfile
WANTLIB += Qt5Core Qt5Gui Qt5OpenGL Qt5Widgets Qt5Xml

MASTER_SITES =		https://github.com/juzzlin/DustRacing2D/releases/download/$V/

MODULES =		devel/cmake \
			x11/qt5
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

LIB_DEPENDS =		audio/libvorbis \
			audio/openal

CONFIGURE_ARGS +=	-DReleaseBuild=ON \
			-DDATA_PATH=${PREFIX}/share/dustrac \
			-DDOC_PATH=${PREFIX}/share/dustrac \
			-DQOpenGLFunctions=OFF \
			-DNO_GLEW=OFF

.include <bsd.port.mk>
