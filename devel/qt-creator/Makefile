USE_WXNEEDED =		Yes
DPB_PROPERTIES =	parallel

COMMENT =		cross-platform IDE for use with Qt

V =			14.0.2
DISTNAME =		qt-creator-opensource-src-${V}
PKGNAME =		qt-creator-${V}

SHARED_LIBS +=  Aggregation               4.0 # 0.0
SHARED_LIBS +=  CPlusPlus                 10.0 # 0.0
SHARED_LIBS +=  ExtensionSystem           10.0 # 0.0
SHARED_LIBS +=  GLSL                      3.0 # 0.0
SHARED_LIBS +=  LanguageUtils             4.0 # 0.0
SHARED_LIBS +=  QmlDebug                  7.0 # 0.0
SHARED_LIBS +=  QmlEditorWidgets          4.0 # 0.0
SHARED_LIBS +=  QmlJS                     13.0 # 0.0
SHARED_LIBS +=  Utils                     13.0 # 0.0
SHARED_LIBS +=  Sqlite                    11.0 # 1.0
SHARED_LIBS +=  Modeling                  10.0 # 1.0
SHARED_LIBS +=  Tracing                   5.0 # 4.7
SHARED_LIBS +=  LanguageServerProtocol    10.0 # 4.8
SHARED_LIBS +=  AdvancedDockingSystem     5.0 # 4.12
SHARED_LIBS +=  qlitehtml                 5.0 # 4.15
SHARED_LIBS +=  ProParser                 5.0 # 4.15
SHARED_LIBS +=  KSyntaxHighlighting       2.0 # 0.0
SHARED_LIBS +=  TerminalLib               1.1 # 0.0
SHARED_LIBS +=  Nanotrace                 0.0 # 0.0
SHARED_LIBS +=  qtkeychain                0.0 # 0.0

CATEGORIES =	devel editors

HOMEPAGE =	https://www.qt.io/ide/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3 with the "Qt Company GPL Exception 1.0"
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Charts Qt6Concurrent Qt6Core
WANTLIB += Qt6Core5Compat Qt6DBus Qt6Designer Qt6DesignerComponents
WANTLIB += Qt6Gui Qt6Help Qt6Network Qt6OpenGL Qt6OpenGLWidgets
WANTLIB += Qt6Positioning Qt6PrintSupport Qt6Qml Qt6QmlCompiler
WANTLIB += Qt6QmlModels Qt6Quick Qt6Quick3D Qt6Quick3DAssetImport
WANTLIB += Qt6Quick3DAssetUtils Qt6Quick3DParticles Qt6Quick3DRuntimeRender
WANTLIB += Qt6Quick3DUtils Qt6QuickWidgets Qt6SerialPort Qt6ShaderTools
WANTLIB += Qt6Sql Qt6Svg Qt6SvgWidgets Qt6Test Qt6WebChannel Qt6WebEngineCore
WANTLIB += Qt6WebEngineWidgets Qt6Widgets Qt6Xml c gio-2.0 glib-2.0
WANTLIB += gobject-2.0 intl m secret-1 xkbcommon yaml-cpp


SITES =	https://download.qt.io/official_releases/qtcreator/${V:R}/${V}/ \
	https://mirrors.ocf.berkeley.edu/qt/official_releases/qtcreator/${V:R}/${V}/

MODULES =	x11/qt6 \
		lang/python \
		devel/cmake

CONFIGURE_STYLE = cmake

BUILD_DEPENDS =	devel/clang-tools-extra \
		lang/clazy \
		x11/qt6/qtquick3d

RUN_DEPENDS =	devel/clang-tools-extra \
		devel/desktop-file-utils \
		devel/gdb \
		devel/gmake \
		lang/clazy \
		x11/gtk+4,-guic

LIB_DEPENDS =	devel/yaml-cpp \
		x11/gnome/libsecret \
		x11/qt6/qt5compat \
		x11/qt6/qtcharts \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtquick3d \
		x11/qt6/qtserialport \
		x11/qt6/qtshadertools \
		x11/qt6/qtsvg \
		x11/qt6/qttools \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine \
		x11/xkbcommon

CONFIGURE_ARGS =	-DBUILD_CPLUSPLUS_TOOLS=ON \
			-DENABLE_SVG_SUPPORT=ON \
			-DBUILD_WITH_PCH=OFF

GDB_ADJ_FILES = \
	src/plugins/debugger/debugger.qbs  \
	src/plugins/debugger/debuggeritem.cpp \
	src/plugins/debugger/debuggeritemmanager.cpp \
	src/tools/qtcreatorcrashhandler/backtracecollector.cpp \
	src/tools/qtpromaker/main.cpp \
	tests/auto/debugger/tst_dumpers.cpp \
	tests/system/suite_general/tst_default_settings/test.py

pre-configure:
	cd ${WRKSRC}; sed -i 's,"gdb","egdb",g' ${GDB_ADJ_FILES}
	# use system qbs/syntax-highlighting (qtcreator.pro)
	rm -rf ${WRKSRC}/src/shared/qbs

MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

post-install:
.for _l _v in ${SHARED_LIBS}
	ln -sf qtcreator/lib${_l}.so.${_v} ${PREFIX}/lib
.endfor
	${MODPY_COMPILEALL} ${PREFIX}/share/qtcreator/debugger/

.include <bsd.port.mk>
