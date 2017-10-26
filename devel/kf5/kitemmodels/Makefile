# $OpenBSD: Makefile,v 1.7 2017/10/26 07:53:23 rsadowski Exp $

COMMENT =		KDE item models extending the Qt model-view framework
DISTNAME =		kitemmodels-${VERSION}

SHARED_LIBS =		KF5ItemModels		3.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core m

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
