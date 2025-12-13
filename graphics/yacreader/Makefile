COMMENT =	read and manage your digital comic collection

V =		9.16.1
DISTNAME =	yacreader-${V}

CATEGORIES =	graphics

HOMEPAGE =	https://www.yacreader.com/

MAINTAINER =	Omar Polo <op@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Core5Compat Qt6Gui
WANTLIB += Qt6Multimedia Qt6Network Qt6OpenGL Qt6OpenGLWidgets
WANTLIB += Qt6Qml Qt6Quick Qt6QuickControls2 Qt6QuickWidgets Qt6Sql
WANTLIB += Qt6Svg Qt6Widgets c m poppler-qt6 unarr

SITES = 	https://github.com/YACReader/yacreader/releases/download/${V}/

EXTRACT_SUFX =		-src.tar.xz

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/qmake x11/qt6

BUILD_DEPENDS =		archivers/xz
LIB_DEPENDS =		archivers/unarr \
			print/poppler,-qt6 \
			x11/qt6/qt5compat \
			x11/qt6/qtdeclarative \
			x11/qt6/qtmultimedia \
			x11/qt6/qtsvg
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

do-install:
.for bin in YACReader YACReaderLibrary YACReaderLibraryServer
	${INSTALL_PROGRAM} ${WRKBUILD}/${bin}/${bin} ${PREFIX}/bin
.endfor
	${INSTALL_MAN} ${WRKSRC}/YACReader{,Library}.1 ${PREFIX}/man/man1
.for dir in applications icons/hicolor/scalable/apps yacreader
	${INSTALL_DATA_DIR} ${PREFIX}/share/${dir}
.endfor
	${INSTALL_DATA} ${WRKSRC}/YACReader{,Library}.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/YACReader{,Library}.svg \
		${PREFIX}/share/icons/hicolor/scalable/apps
	cd ${WRKSRC}/release && pax -rw . ${PREFIX}/share/yacreader
	cd ${WRKBUILD}/release && pax -rw . ${PREFIX}/share/yacreader

.include <bsd.port.mk>
