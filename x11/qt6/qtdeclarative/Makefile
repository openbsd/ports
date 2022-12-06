# qmlplugindump
USE_WXNEEDED =	Yes

QT6NAME =	QtDeclarative
COMMENT =	Qt6 Quick and QML components
PKGSPEC =	qt6-qtdeclarative-${QT6_PKGSPEC}

SHARED_LIBS =   Qt6Qml                    2.0 # 6.4
SHARED_LIBS +=  Qt6Quick                  2.0 # 6.4
SHARED_LIBS +=  Qt6QuickParticles         0.1 # 6.4
SHARED_LIBS +=  Qt6QuickTest              0.2 # 6.4
SHARED_LIBS +=  Qt6QuickWidgets           0.1 # 6.4
SHARED_LIBS +=  Qt6QuickShapes            0.2 # 6.4
SHARED_LIBS +=  Qt6QmlModels              1.0 # 6.4
SHARED_LIBS +=  Qt6QmlWorkerScript        0.1 # 6.4
SHARED_LIBS +=  Qt6LabsAnimation          0.0 # 0.0
SHARED_LIBS +=  Qt6LabsFolderListModel    0.0 # 0.0
SHARED_LIBS +=  Qt6LabsQmlModels          0.0 # 0.0
SHARED_LIBS +=  Qt6LabsSettings           0.0 # 0.0
SHARED_LIBS +=  Qt6LabsSharedImage        0.0 # 0.0
SHARED_LIBS +=  Qt6LabsWavefrontMesh      0.0 # 0.0
SHARED_LIBS +=  Qt6QmlCore                0.1 # 0.0
SHARED_LIBS +=  Qt6QmlLocalStorage        0.0 # 0.0
SHARED_LIBS +=  Qt6QmlXmlListModel        0.0 # 0.0
SHARED_LIBS +=  Qt6QuickControls2         0.0 # 0.0
SHARED_LIBS +=  Qt6QuickControls2Impl     0.1 # 0.0
SHARED_LIBS +=  Qt6QuickDialogs2          0.1 # 0.0
SHARED_LIBS +=  Qt6QuickDialogs2QuickImpl 1.0 # 0.0
SHARED_LIBS +=  Qt6QuickDialogs2Utils     0.0 # 0.0
SHARED_LIBS +=  Qt6QuickLayouts           1.0 # 0.0
SHARED_LIBS +=  Qt6QuickTemplates2        1.0 # 0.0
SHARED_LIBS +=  Qt6QmlCompiler            0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6JsonRpc Qt6LanguageServer
WANTLIB += Qt6Network Qt6OpenGL Qt6Sql Qt6Test Qt6Widgets c m
WANTLIB += xkbcommon

MODULES =	lang/python
CONFIGURE_STYLE = cmake

BUILD_DEPENDS =	x11/qt6/qtshadertools \
		graphics/vulkan-loader

LIB_DEPENDS =	x11/qt6/qtlanguageserver

pre-configure:
# Python is used for building, this path does not get into final packages.
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
