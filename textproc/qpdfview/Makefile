COMMENT=	tabbed DjVu/PDF/PS document viewer
V=		0.4.18
DISTNAME=	qpdfview-$V
CATEGORIES=	textproc

HOMEPAGE=	https://launchpad.net/qpdfview

MAINTAINER=	Salil Wadnerkar <bsdprg@gmail.com>

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://launchpad.net/qpdfview/trunk/$V/+download/

MODULES=	devel/qmake \
		x11/qt5

MODQMAKE_ARGS+=	TARGET_INSTALL_PATH=${LOCALBASE}/bin \
		PLUGIN_INSTALL_PATH=${LOCALBASE}/lib \
		DATA_INSTALL_PATH=${LOCALBASE}/share/qpdfview \
		MANUAL_INSTALL_PATH=${LOCALBASE}/man/man1 \
		ICON_INSTALL_PATH=${LOCALBASE}/share/icons/hicolor/scalable/apps \
		LAUNCHER_INSTALL_PATH=${LOCALBASE}/share/applications \
		APPDATA_INSTALL_PATH=${LOCALBASE}/share

MODQMAKE_PROJECTS=	qpdfview.pro

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5PrintSupport Qt5Sql Qt5Svg Qt5Widgets Qt5Xml
WANTLIB += c cups djvulibre m poppler-qt5 spectre synctex

LIB_DEPENDS=	graphics/djvulibre \
		print/libspectre \
		print/poppler,-qt5 \
		print/texlive/base,-synctex \
		x11/qt5/qtsvg

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

NO_TEST =	Yes

.include <bsd.port.mk>
