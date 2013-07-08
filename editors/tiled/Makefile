# $OpenBSD: Makefile,v 1.1.1.1 2013/07/08 22:10:57 bentley Exp $

COMMENT =		tile map editor

V =			0.9.0
DISTNAME =		tiled-qt-${V}
PKGNAME =		tiled-${V}

SHARED_LIBS +=		tiled                     0.0 # 1.0

CATEGORIES =		editors games

HOMEPAGE =		http://www.mapeditor.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL ICE QtGui QtOpenGL SM X11 Xext Xi Xinerama Xrender
WANTLIB += c fontconfig freetype m pthread stdc++ z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tiled/}

RUN_DEPENDS =		devel/desktop-file-utils
MODULES =		x11/qt4

MAKE_FLAGS =		CC="${CC}" \
			CXX="${CXX}" \
			CXXFLAGS="${CXXFLAGS}" \
			PREFIX="${PREFIX}" \
			LIBtiled_VERSION="${LIBtiled_VERSION}"
FAKE_FLAGS =		INSTALL_ROOT="${DESTDIR}"

do-configure:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		qmake4 -makefile tiled.pro -config release

do-test:
	cd ${WRKSRC}/tests && \
		./staggeredrenderer/staggeredrenderer && \
		./mapreader/mapreader

.include <bsd.port.mk>
