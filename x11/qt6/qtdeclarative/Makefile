# $OpenBSD: Makefile,v 1.2 2021/05/15 12:24:55 rsadowski Exp $

# qmlplugindump
USE_WXNEEDED =		Yes

QT6NAME =		QtDeclarative
COMMENT =		Qt6 Quick and QML components
REVISION =		0

SHARED_LIBS =   Qt6Qml                    0.0 # 6.0
SHARED_LIBS +=  Qt6Quick                  0.0 # 6.0
SHARED_LIBS +=  Qt6QuickParticles         0.0 # 6.0
SHARED_LIBS +=  Qt6QuickTest              0.0 # 6.0
SHARED_LIBS +=  Qt6QuickWidgets           0.0 # 6.0
SHARED_LIBS +=  Qt6QuickShapes            0.0 # 6.0
SHARED_LIBS +=  Qt6QmlModels              0.0 # 6.0
SHARED_LIBS +=  Qt6QmlWorkerScript        0.0 # 6.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Sql Qt6Test Qt6Widgets c m

MODULES =		lang/python
MODPY_RUNDEP =		No
MODQT6_DEPS =		No
CONFIGURE_STYLE =	cmake

pre-configure:
# Python is used for building, this path does not get into final packages.
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
