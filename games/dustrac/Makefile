# $OpenBSD: Makefile,v 1.2 2014/12/09 21:47:03 zhuk Exp $

COMMENT =		traditional top-down car racing game

DISTNAME =		dustrac-1.7.3

CATEGORIES =		games

HOMEPAGE =		http://dustrac.sourceforge.net/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU QtGui QtOpenGL QtXml X11 c m openal pthread
WANTLIB += vorbisfile

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=dustrac/}

MODULES =		devel/cmake \
			gcc4 \
			x11/qt4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic

LIB_DEPENDS =		audio/openal

CONFIGURE_ARGS +=	-DReleaseBuild=ON \
			-DDATA_PATH=${PREFIX}/share/dustrac \
			-DDOC_PATH=${PREFIX}/share/dustrac \
			-DUseQt5=OFF

.include <bsd.port.mk>
