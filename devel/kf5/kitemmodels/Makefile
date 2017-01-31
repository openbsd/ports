# $OpenBSD: Makefile,v 1.3 2017/01/31 12:45:55 zhuk Exp $

COMMENT =		KDE item models extending the Qt model-view framework
DISTNAME =		kitemmodels-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5ItemModels		1.0

WANTLIB =		Qt5Core m

BUILD_DEPENDS =		x11/qt5/qtdeclarative \
			x11/qt5/qtquickcontrols

RUN_DEPENDS =		x11/qt5/qtdeclarative \
			x11/qt5/qtquickcontrols

# The PythonModuleGeneration CMake find module picks up highest Python3
# version it could find, and fails to build anyway.
# The module needs more fixes. Also, it's not clear how to deal
# with multiple Python dependencies.
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_PythonModuleGeneration=Yes

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
