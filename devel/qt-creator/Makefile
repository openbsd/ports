USE_WXNEEDED =		Yes

COMMENT =		cross-platform IDE for use with Qt

V =			11.0.3
DISTNAME =		qt-creator-opensource-src-${V}
PKGNAME =		qt-creator-${V}

SHARED_LIBS +=  Aggregation               2.0 # 0.0
SHARED_LIBS +=  CPlusPlus                 7.0 # 0.0
SHARED_LIBS +=  ExtensionSystem           7.0 # 0.0
SHARED_LIBS +=  GLSL                      1.1 # 0.0
SHARED_LIBS +=  LanguageUtils             1.1 # 0.0
SHARED_LIBS +=  QmlDebug                  6.0 # 0.0
SHARED_LIBS +=  QmlEditorWidgets          2.0 # 0.0
SHARED_LIBS +=  QmlJS                     10.0 # 0.0
SHARED_LIBS +=  QtcSsh                    2.0 # 0.0
SHARED_LIBS +=  Utils                     11.0 # 0.0
SHARED_LIBS +=  Sqlite                    8.0 # 1.0
SHARED_LIBS +=  Modeling                  7.0 # 1.0
SHARED_LIBS +=  ClangSupport              2.0 # 4.5
SHARED_LIBS +=  Tracing                   3.0 # 4.7
SHARED_LIBS +=  LanguageServerProtocol    6.0 # 4.8
SHARED_LIBS +=  AdvancedDockingSystem     2.0 # 4.12
SHARED_LIBS +=  qlitehtml                 2.0 # 4.15
SHARED_LIBS +=  ProParser                 2.0 # 4.15
SHARED_LIBS +=  KSyntaxHighlighting       0.0 # 0.0

CATEGORIES =	devel editors

HOMEPAGE =	https://www.qt.io/ide/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3 with the "Qt Company GPL Exception 1.0"
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Core5Compat
WANTLIB += Qt6Designer Qt6DesignerComponents Qt6Gui Qt6Help Qt6Network
WANTLIB += Qt6OpenGL Qt6OpenGLWidgets Qt6PrintSupport Qt6Qml Qt6QmlCompiler
WANTLIB += Qt6QmlModels Qt6Quick Qt6QuickWidgets Qt6SerialPort
WANTLIB += Qt6Sql Qt6Svg Qt6SvgWidgets Qt6Test Qt6WebChannel Qt6WebEngineCore
WANTLIB += Qt6WebEngineWidgets Qt6Widgets Qt6Xml c m xkbcommon
WANTLIB += yaml-cpp

SITES =	https://download.qt.io/official_releases/qtcreator/${V:R}/${V}/ \
	https://mirrors.ocf.berkeley.edu/qt/official_releases/qtcreator/${V:R}/${V}/

MODULES =	x11/qt6 \
		lang/clang \
		lang/python \
		devel/cmake

MODCLANG_VERSION =		16
MODCLANG_COMPILER_LINKS =	No
MODCLANG_RUNDEP =		Yes

CONFIGURE_STYLE = cmake

BUILD_DEPENDS =	devel/clang-tools-extra \
		lang/clazy

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
			-DBUILD_WITH_PCH=OFF \
			-DClang_DIR=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib/cmake/clang

GDB_ADJ_FILES = \
	src/plugins/debugger/debuggeritemmanager.cpp \
	src/tools/qtcreatorcrashhandler/backtracecollector.cpp \
	src/tools/qtpromaker/main.cpp \
	tests/auto/debugger/tst_dumpers.cpp \
	tests/system/suite_general/tst_openqt_creator/testdata/projecttree_creator.tsv

MODCMAKE_LDFLAGS +=	-lc

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
