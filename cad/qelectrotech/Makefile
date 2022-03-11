COMMENT=	electric diagrams drawing tool

DISTNAME =	qet-0.7.0
PKGNAME = 	qelectrotech-0.70
CATEGORIES =	cad graphics
REVISION =      0

HOMEPAGE =	https://qelectrotech.org/
MASTER_SITES =	https://git.tuxfamily.org/qet/qet.git/snapshot/
EXTRACT_SUFX =	.tar.gz

# GPLv2 / CC-BY 3.0 for the graphic elements
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc
MODULES =	devel/kf5 devel/qmake

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		devel/kf5/kwidgetsaddons \
		x11/qt5/qtsvg

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5Gui
WANTLIB += Qt5Network Qt5PrintSupport Qt5Sql Qt5Svg Qt5Widgets
WANTLIB += Qt5Xml c m
WANTLIB += KF5CoreAddons KF5WidgetsAddons

RUN_DEPENDS =	misc/shared-mime-info \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_STYLE =	qmake
CONFIGURE_ENV =		QMAKEMODULES=${LOCALBASE}/share/kf5/mkspecs

.include <bsd.port.mk>
