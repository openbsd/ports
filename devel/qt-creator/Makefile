USE_WXNEEDED =		Yes

COMMENT =		cross-platform IDE for use with Qt

V =			12.0.2
DISTNAME =		qt-creator-opensource-src-${V}
PKGNAME =		qt-creator-${V}

SHARED_LIBS +=  Aggregation               3.0 # 0.0
SHARED_LIBS +=  CPlusPlus                 9.0 # 0.0
SHARED_LIBS +=  ExtensionSystem           9.0 # 0.0
SHARED_LIBS +=  GLSL                      2.0 # 0.0
SHARED_LIBS +=  LanguageUtils             3.0 # 0.0
SHARED_LIBS +=  QmlDebug                  6.0 # 0.0
SHARED_LIBS +=  QmlEditorWidgets          3.0 # 0.0
SHARED_LIBS +=  QmlJS                     12.0 # 0.0
SHARED_LIBS +=  Utils                     12.0 # 0.0
SHARED_LIBS +=  Sqlite                    10.0 # 1.0
SHARED_LIBS +=  Modeling                  9.0 # 1.0
SHARED_LIBS +=  Tracing                   4.0 # 4.7
SHARED_LIBS +=  LanguageServerProtocol    9.0 # 4.8
SHARED_LIBS +=  AdvancedDockingSystem     4.0 # 4.12
SHARED_LIBS +=  qlitehtml                 4.0 # 4.15
SHARED_LIBS +=  ProParser                 4.0 # 4.15
SHARED_LIBS +=  KSyntaxHighlighting       1.0 # 0.0
SHARED_LIBS +=  TerminalLib               1.0 # 0.0

CATEGORIES =	devel editors

HOMEPAGE =	https://www.qt.io/ide/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3 with the "Qt Company GPL Exception 1.0"
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Core5Compat
WANTLIB += Qt6Designer Qt6DesignerComponents Qt6Gui Qt6Help Qt6Network
WANTLIB += Qt6OpenGL Qt6OpenGLWidgets Qt6Positioning Qt6PrintSupport
WANTLIB += Qt6Qml Qt6QmlCompiler Qt6QmlModels Qt6Quick Qt6QuickWidgets
WANTLIB += Qt6SerialPort Qt6Sql Qt6Svg Qt6SvgWidgets Qt6Test Qt6WebChannel
WANTLIB += Qt6WebEngineCore Qt6WebEngineWidgets Qt6Widgets Qt6Xml
WANTLIB += c m xkbcommon yaml-cpp

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
		x11/qt6/qtdeclarative \
		x11/qt6/qtserialport \
		x11/qt6/qtsvg \
		x11/qt6/qttools \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine \
		x11/qt6/qt5compat

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

post-install:
.for _l _v in ${SHARED_LIBS}
	ln -sf qtcreator/lib${_l}.so.${_v} ${PREFIX}/lib
.endfor
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/qtcreator/debugger/

.include <bsd.port.mk>
