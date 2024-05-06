# qmlplugindump
USE_WXNEEDED =	Yes

QT6NAME =	QtDeclarative
COMMENT =	Qt6 Quick and QML components
PKGSPEC =	qt6-qtdeclarative-${QT6_PKGSPEC}
REVISION =	0

SHARED_LIBS =   Qt6Qml                    5.0 # 6.6
SHARED_LIBS +=  Qt6Quick                  6.0 # 6.6
SHARED_LIBS +=  Qt6QuickParticles         1.1 # 6.6
SHARED_LIBS +=  Qt6QuickTest              1.0 # 6.6
SHARED_LIBS +=  Qt6QuickWidgets           3.0 # 6.6
SHARED_LIBS +=  Qt6QuickShapes            1.1 # 6.6
SHARED_LIBS +=  Qt6QmlModels              3.0 # 6.6
SHARED_LIBS +=  Qt6QmlWorkerScript        1.0 # 6.6
SHARED_LIBS +=  Qt6LabsAnimation          1.0 # 6.6
SHARED_LIBS +=  Qt6LabsFolderListModel    1.0 # 6.6
SHARED_LIBS +=  Qt6LabsQmlModels          1.0 # 6.6
SHARED_LIBS +=  Qt6LabsSettings           1.0 # 6.6
SHARED_LIBS +=  Qt6LabsSharedImage        1.0 # 6.6
SHARED_LIBS +=  Qt6LabsWavefrontMesh      1.0 # 6.6
SHARED_LIBS +=  Qt6QmlCore                1.0 # 6.6
SHARED_LIBS +=  Qt6QmlLocalStorage        1.0 # 6.6
SHARED_LIBS +=  Qt6QmlXmlListModel        1.0 # 6.6
SHARED_LIBS +=  Qt6QuickControls2         1.0 # 6.6
SHARED_LIBS +=  Qt6QuickControls2Impl     1.1 # 6.6
SHARED_LIBS +=  Qt6QuickDialogs2          2.0 # 6.6
SHARED_LIBS +=  Qt6QuickDialogs2QuickImpl 3.0 # 6.6
SHARED_LIBS +=  Qt6QuickDialogs2Utils     1.0 # 6.6
SHARED_LIBS +=  Qt6QuickLayouts           3.1 # 6.6
SHARED_LIBS +=  Qt6QuickTemplates2        5.0 # 6.6
SHARED_LIBS +=  Qt6QmlCompiler            2.0 # 6.6
SHARED_LIBS +=  Qt6QuickEffects           1.0 # 6.6

SHARED_LIBS +=	Qt6QuickControls2Basic    0.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2BasicStyleImpl 0.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2Fusion   0.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2FusionStyleImpl 0.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2Imagine  0.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2ImagineStyleImpl 0.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2Material 0.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2MaterialStyleImpl 0.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2Universal 0.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2UniversalStyleImpl 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6JsonRpc Qt6LanguageServer
WANTLIB += Qt6Network Qt6OpenGL Qt6Sql Qt6Test Qt6Widgets c m
WANTLIB += xkbcommon

MODULES =	lang/python
CONFIGURE_STYLE = cmake

MODQT6_DEPS =	No

BUILD_DEPENDS =	x11/qt6/qtshadertools \
		graphics/vulkan-loader

LIB_DEPENDS =	x11/qt6/qtlanguageserver \
		x11/qt6/qtbase \
		x11/xkbcommon

pre-configure:
# Python is used for building, this path does not get into final packages.
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
