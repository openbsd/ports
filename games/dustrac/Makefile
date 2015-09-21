# $OpenBSD: Makefile,v 1.5 2015/09/21 20:05:41 jasper Exp $

COMMENT =		traditional top-down car racing game

DISTNAME =		dustrac-1.11.0

CATEGORIES =		games

HOMEPAGE =		http://dustrac.sourceforge.net/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU X11 c m openal pthread vorbisfile
WANTLIB += Qt5Core Qt5Gui Qt5OpenGL Qt5Widgets Qt5Xml

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=dustrac/}

MODULES =		devel/cmake \
			gcc4 \
			x11/qt5
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

LIB_DEPENDS =		audio/openal

CONFIGURE_ARGS +=	-DReleaseBuild=ON \
			-DDATA_PATH=${PREFIX}/share/dustrac \
			-DDOC_PATH=${PREFIX}/share/dustrac

.include <bsd.port.mk>
