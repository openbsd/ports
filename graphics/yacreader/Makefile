COMMENT =	read and manage your digital comic collection

V =		9.8.2
DISTNAME =	yacreader-${V}.2106195
PKGNAME =	yacreader-${V}

CATEGORIES =	graphics

HOMEPAGE =	https://www.yacreader.com/

MAINTAINER =	Omar Polo <op@omarpolo.com>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Multimedia
WANTLIB += Qt5Network Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickWidgets
WANTLIB += Qt5Sql Qt5Svg Qt5Widgets c m poppler-qt5 unarr

MASTER_SITES = https://github.com/YACReader/yacreader/releases/download/${V}/

EXTRACT_SUFX =		-src.tar.xz

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/qmake x11/qt5

BUILD_DEPENDS =		archivers/xz
LIB_DEPENDS =		archivers/unarr \
			print/poppler,-qt5 \
			x11/qt5/qtmultimedia \
			x11/qt5/qtsvg
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

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

.include <bsd.port.mk>
