# $OpenBSD: Makefile,v 1.9 2018/06/04 20:25:32 rsadowski Exp $

COMMENT =		KDE item models extending the Qt model-view framework
DISTNAME =		kitemmodels-${VERSION}

SHARED_LIBS =		KF5ItemModels		4.1

WANTLIB += ${COMPILER_LIBCXX} Qt5Core m

BUILD_DEPENDS =		x11/qt5/qtdeclarative \
			x11/qt5/qtquickcontrols \
			x11/qt5/qtscript

RUN_DEPENDS =		x11/qt5/qtdeclarative \
			x11/qt5/qtquickcontrols \
			x11/qt5/qtscript

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
