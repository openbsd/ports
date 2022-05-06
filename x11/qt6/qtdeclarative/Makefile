# qmlplugindump
USE_WXNEEDED =		Yes

QT6NAME =		QtDeclarative
COMMENT =		Qt6 Quick and QML components

SHARED_LIBS =   Qt6Qml                    0.1 # 6.3
SHARED_LIBS +=  Qt6Quick                  0.1 # 6.3
SHARED_LIBS +=  Qt6QuickParticles         0.1 # 6.3
SHARED_LIBS +=  Qt6QuickTest              0.1 # 6.3
SHARED_LIBS +=  Qt6QuickWidgets           0.1 # 6.3
SHARED_LIBS +=  Qt6QuickShapes            0.1 # 6.3
SHARED_LIBS +=  Qt6QmlModels              0.1 # 6.3
SHARED_LIBS +=  Qt6QmlWorkerScript        0.1 # 6.3
SHARED_LIBS +=  Qt6LabsAnimation          0.0 # 0.0
SHARED_LIBS +=  Qt6LabsFolderListModel    0.0 # 0.0
SHARED_LIBS +=  Qt6LabsQmlModels          0.0 # 0.0
SHARED_LIBS +=  Qt6LabsSettings           0.0 # 0.0
SHARED_LIBS +=  Qt6LabsSharedImage        0.0 # 0.0
SHARED_LIBS +=  Qt6LabsWavefrontMesh      0.0 # 0.0
SHARED_LIBS +=  Qt6QmlCore                0.0 # 0.0
SHARED_LIBS +=  Qt6QmlLocalStorage        0.0 # 0.0
SHARED_LIBS +=  Qt6QmlXmlListModel        0.0 # 0.0
SHARED_LIBS +=  Qt6QuickControls2         0.0 # 0.0
SHARED_LIBS +=  Qt6QuickControls2Impl     0.0 # 0.0
SHARED_LIBS +=  Qt6QuickDialogs2          0.0 # 0.0
SHARED_LIBS +=  Qt6QuickDialogs2QuickImpl 0.0 # 0.0
SHARED_LIBS +=  Qt6QuickDialogs2Utils     0.0 # 0.0
SHARED_LIBS +=  Qt6QuickLayouts           0.0 # 0.0
SHARED_LIBS +=  Qt6QuickTemplates2        0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Sql Qt6Test Qt6Widgets c m xkbcommon

MODULES =		lang/python
CONFIGURE_STYLE =	cmake

BUILD_DEPENDS =		x11/qt6/qtshadertools>=${VERSION},<${NEXT_VERSION} \
			x11/qt6/qtlanguageserver>=${VERSION},<${NEXT_VERSION} \
			graphics/vulkan-loader

pre-configure:
# Python is used for building, this path does not get into final packages.
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
