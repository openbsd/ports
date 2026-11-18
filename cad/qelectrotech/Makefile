COMMENT =	electric diagrams drawing tool

DIST_TUPLE +=	github qelectrotech qelectrotech-source-mirror \
		33a0b99aaaa68bd93dd580550cd1d66ed7e70449 .
DIST_TUPLE +=	github qelectrotech qelectrotech-elements \
		7832b798b678c8fe0a3f6927fdb003e62f467e1f  elements
DIST_TUPLE +=	github itay-grudev SingleApplication \
		a218603d76a55dddb65b84f2b49ecaa8efc074ea SingleApplication

DISTNAME = 	qelectrotech-0.200.1pre0

CATEGORIES =	cad graphics

HOMEPAGE =	https://qelectrotech.org/

# GPLv2 / CC-BY 3.0 for the graphic elements
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Gui
WANTLIB += Qt6Network Qt6Pdf Qt6PrintSupport Qt6Qml Qt6Sql Qt6Svg
WANTLIB += Qt6Widgets Qt6Xml c execinfo m pugixml sqlite3 xkbcommon

MODULES =	devel/cmake \
		x11/qt6

LIB_DEPENDS =	databases/sqlite3 \
		textproc/pugixml \
		x11/qt6/qtdeclarative \
		x11/qt6/qtsvg \
		x11/qt6/qtwebengine \
		x11/xkbcommon

RUN_DEPENDS =	misc/shared-mime-info \
		devel/desktop-file-utils \
		x11/gtk+4,-guic

CONFIGURE_ARGS =	-DBUILD_PUGIXML=OFF \
			-DBUILD_WITH_KF=OFF

# Tests are depending on a build-in kf6/kcoreaddons version and catch2
CONFIGURE_ARGS +=	-DPACKAGE_TESTS=OFF

.include <bsd.port.mk>
