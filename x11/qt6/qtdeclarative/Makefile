# qmlplugindump
USE_WXNEEDED =	Yes

QT6NAME =	QtDeclarative
COMMENT =	Qt6 Quick and QML components
PKGSPEC =	qt6-qtdeclarative-${QT6_PKGSPEC}

SHARED_LIBS =   Qt6Qml                    7.0 # 6.7
SHARED_LIBS +=  Qt6Quick                  8.0 # 6.7
SHARED_LIBS +=  Qt6QuickParticles         3.0 # 6.7
SHARED_LIBS +=  Qt6QuickTest              3.0 # 6.7
SHARED_LIBS +=  Qt6QuickWidgets           5.0 # 6.7
SHARED_LIBS +=  Qt6QuickShapes            3.0 # 6.7
SHARED_LIBS +=  Qt6QmlModels              5.0 # 6.7
SHARED_LIBS +=  Qt6QmlWorkerScript        2.0 # 6.7
SHARED_LIBS +=  Qt6LabsAnimation          2.0 # 6.7
SHARED_LIBS +=  Qt6LabsFolderListModel    2.0 # 6.7
SHARED_LIBS +=  Qt6LabsQmlModels          2.0 # 6.7
SHARED_LIBS +=  Qt6LabsSettings           2.0 # 6.7
SHARED_LIBS +=  Qt6LabsSharedImage        2.0 # 6.7
SHARED_LIBS +=  Qt6LabsWavefrontMesh      2.0 # 6.7
SHARED_LIBS +=  Qt6QmlCore                3.0 # 6.7
SHARED_LIBS +=  Qt6QmlLocalStorage        2.0 # 6.7
SHARED_LIBS +=  Qt6QmlXmlListModel        2.0 # 6.7
SHARED_LIBS +=  Qt6QuickControls2         3.0 # 6.7
SHARED_LIBS +=  Qt6QuickControls2Impl     2.0 # 6.7
SHARED_LIBS +=  Qt6QuickDialogs2          3.0 # 6.7
SHARED_LIBS +=  Qt6QuickDialogs2QuickImpl 4.0 # 6.7
SHARED_LIBS +=  Qt6QuickDialogs2Utils     2.0 # 6.7
SHARED_LIBS +=  Qt6QuickLayouts           4.0 # 6.7
SHARED_LIBS +=  Qt6QuickTemplates2        7.0 # 6.7
SHARED_LIBS +=  Qt6QmlCompiler            4.0 # 6.7
SHARED_LIBS +=  Qt6QuickEffects           2.0 # 6.7
SHARED_LIBS +=	Qt6QmlNetwork             2.0 # 6.7

SHARED_LIBS +=	Qt6QuickControls2Basic    0.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2BasicStyleImpl 0.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2Fusion   0.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2FusionStyleImpl 0.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2Imagine  1.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2ImagineStyleImpl 0.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2Material 2.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2MaterialStyleImpl 0.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2Universal 0.0 # 0.0
SHARED_LIBS +=	Qt6QuickControls2UniversalStyleImpl 0.0 # 0.0

SHARED_LIBS +=  Qt6LabsPlatform           0.0 # 0.0
SHARED_LIBS +=  Qt6QmlMeta                0.0 # 0.0
SHARED_LIBS +=  Qt6QuickControls2FluentWinUI3StyleImpl 0.0 # 0.0
SHARED_LIBS +=  Qt6QuickVectorImage       0.0 # 0.0
SHARED_LIBS +=  Qt6QuickVectorImageGenerator 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Sql Qt6Svg Qt6Test Qt6Widgets c m xkbcommon

MODULES =	lang/python
CONFIGURE_STYLE = cmake

MODQT6_DEPS =	No

#.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
#PKG_ARGS+=      -Dx86=1
#.else
#PKG_ARGS+=      -Dx86=0
#.endif

BUILD_DEPENDS =	graphics/vulkan-loader \
		x11/qt6/qtlanguageserver \
		x11/qt6/qtshadertools

LIB_DEPENDS =	x11/qt6/qtbase \
		x11/qt6/qtsvg \
		x11/xkbcommon

pre-configure:
# Python is used for building, this path does not get into final packages.
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
