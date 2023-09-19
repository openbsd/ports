COMMENT =	electric diagrams drawing tool

DISTNAME =	qet-0.9.1
PKGNAME = 	qelectrotech-0.91
CATEGORIES =	cad graphics
REVISION =	0

HOMEPAGE =	https://qelectrotech.org/
SITES =		https://git.tuxfamily.org/qet/qet.git/snapshot/
EXTRACT_SUFX =	.tar.gz

# GPLv2 / CC-BY 3.0 for the graphic elements
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF5CoreAddons KF5WidgetsAddons
WANTLIB += Qt5Concurrent Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Sql Qt5Svg Qt5Widgets Qt5Xml c m sqlite3

COMPILER =	base-clang ports-gcc
MODULES =	devel/kf5 devel/qmake

# XXX ../sources/ui/dynamicelementtextitemeditor.cpp:26:10:
# error: '../ui_dynamicelementtextitemeditor.h' file not found, did you mean 'ui_dynamicelementtextitemeditor.h'?
SEPARATE_BUILD =	No

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		devel/kf5/kwidgetsaddons \
		x11/qt5/qtsvg

RUN_DEPENDS =	misc/shared-mime-info \
		devel/desktop-file-utils \
		x11/gtk+4,-guic

CONFIGURE_STYLE =	qmake
CONFIGURE_ENV =		QMAKEMODULES=${LOCALBASE}/share/kf5/mkspecs

.include <bsd.port.mk>
