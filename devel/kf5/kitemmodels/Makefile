# $OpenBSD: Makefile,v 1.5 2017/07/19 14:03:35 zhuk Exp $

COMMENT =		KDE item models extending the Qt model-view framework
DISTNAME =		kitemmodels-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5ItemModels		2.0

WANTLIB =		Qt5Core m

BUILD_DEPENDS =		x11/qt5/qtdeclarative \
			x11/qt5/qtquickcontrols \
			x11/qt5/qtscript

RUN_DEPENDS =		x11/qt5/qtdeclarative \
			x11/qt5/qtquickcontrols \
			x11/qt5/qtscript

# The PythonModuleGeneration CMake find module picks up highest Python3
# version it could find, and fails to build anyway.
# The module needs more fixes. Also, it's not clear how to deal
# with multiple Python dependencies.
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_PythonModuleGeneration=Yes

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
