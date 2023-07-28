# qmlplugindump
USE_WXNEEDED =	Yes

QT6NAME =	QtDeclarative
COMMENT =	Qt6 Quick and QML components
PKGSPEC =	qt6-qtdeclarative-${QT6_PKGSPEC}

SHARED_LIBS =   Qt6Qml                    3.1 # 6.5
SHARED_LIBS +=  Qt6Quick                  4.1 # 6.5
SHARED_LIBS +=  Qt6QuickParticles         1.0 # 6.5
SHARED_LIBS +=  Qt6QuickTest              1.0 # 6.5
SHARED_LIBS +=  Qt6QuickWidgets           1.0 # 6.5
SHARED_LIBS +=  Qt6QuickShapes            1.0 # 6.5
SHARED_LIBS +=  Qt6QmlModels              2.1 # 6.5
SHARED_LIBS +=  Qt6QmlWorkerScript        1.0 # 6.5
SHARED_LIBS +=  Qt6LabsAnimation          1.0 # 6.5
SHARED_LIBS +=  Qt6LabsFolderListModel    1.0 # 6.5
SHARED_LIBS +=  Qt6LabsQmlModels          1.0 # 6.5
SHARED_LIBS +=  Qt6LabsSettings           1.0 # 6.5
SHARED_LIBS +=  Qt6LabsSharedImage        1.0 # 6.5
SHARED_LIBS +=  Qt6LabsWavefrontMesh      1.0 # 6.5
SHARED_LIBS +=  Qt6QmlCore                1.0 # 6.5
SHARED_LIBS +=  Qt6QmlLocalStorage        1.0 # 6.5
SHARED_LIBS +=  Qt6QmlXmlListModel        1.0 # 6.5
SHARED_LIBS +=  Qt6QuickControls2         1.0 # 6.5
SHARED_LIBS +=  Qt6QuickControls2Impl     1.1 # 6.5
SHARED_LIBS +=  Qt6QuickDialogs2          1.0 # 6.5
SHARED_LIBS +=  Qt6QuickDialogs2QuickImpl 2.0 # 6.5
SHARED_LIBS +=  Qt6QuickDialogs2Utils     1.0 # 6.5
SHARED_LIBS +=  Qt6QuickLayouts           3.0 # 6.5
SHARED_LIBS +=  Qt6QuickTemplates2        3.1 # 6.5
SHARED_LIBS +=  Qt6QmlCompiler            1.2 # 6.5
SHARED_LIBS +=  Qt6QuickEffects           1.0 # 6.5

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6JsonRpc Qt6LanguageServer
WANTLIB += Qt6Network Qt6OpenGL Qt6Sql Qt6Test Qt6Widgets c m
WANTLIB += xkbcommon

MODULES =	lang/python
CONFIGURE_STYLE = cmake

BUILD_DEPENDS =	x11/qt6/qtshadertools \
		graphics/vulkan-loader

LIB_DEPENDS =	x11/qt6/qtlanguageserver \
		x11/xkbcommon

pre-configure:
# Python is used for building, this path does not get into final packages.
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
