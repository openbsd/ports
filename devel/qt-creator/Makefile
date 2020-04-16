# $OpenBSD: Makefile,v 1.57 2020/04/16 10:34:57 rsadowski Exp $

#Qt5Webkit
USE_WXNEEDED =		Yes

COMMENT =		cross-platform IDE for use with Qt
V =			4.11.2
DISTNAME =		qt-creator-opensource-src-${V}
PKGNAME =		qt-creator-${V}
REVISION =		0

SHARED_LIBS +=	Aggregation               0.0 # 0.0
SHARED_LIBS +=	CPlusPlus                 2.0 # 0.0
SHARED_LIBS +=	ExtensionSystem           4.0 # 0.0
SHARED_LIBS +=	GLSL                      0.0 # 0.0
SHARED_LIBS +=	LanguageUtils             0.0 # 0.0
SHARED_LIBS +=	QmlDebug                  4.0 # 0.0
SHARED_LIBS +=	QmlEditorWidgets          0.0 # 0.0
SHARED_LIBS +=	QmlJS                     5.0 # 0.0
SHARED_LIBS +=	QtcSsh                    0.0 # 0.0
SHARED_LIBS +=	Utils                     5.0 # 0.0
SHARED_LIBS +=	Sqlite                    4.0 # 1.0
SHARED_LIBS +=	Modeling                  4.0 # 1.0
SHARED_LIBS +=	Clangsupport              1.0 # 4.5
SHARED_LIBS +=	Tracing                   0.0 # 4.7
SHARED_LIBS +=  LanguageServerProtocol    0.0 # 4.8

MAKE_FLAGS =	BUILD_TESTS=1
.for _l _v in ${SHARED_LIBS}
MAKE_FLAGS +=	LIB${_l}_VERSION=${_v}
.endfor

CATEGORIES =	devel editors

HOMEPAGE =	https://www.qt.io/ide/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3 with the "Qt Company GPL Exception 1.0"
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF5SyntaxHighlighting Qt5Concurrent
WANTLIB += Qt5Core Qt5Designer Qt5DesignerComponents Qt5Gui Qt5Help
WANTLIB += Qt5Network Qt5PrintSupport Qt5Qml Qt5Quick Qt5QuickWidgets
WANTLIB += Qt5Script Qt5SerialPort Qt5Sql Qt5Svg Qt5Widgets Qt5Xml
WANTLIB += c clang m yaml-cpp

MASTER_SITES =	https://download.qt.io/official_releases/qtcreator/${V:R}/${V}/

MODULES =	x11/qt5 \
		lang/python \
		devel/qmake

CONFIGURE_STYLE =	qmake

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

MODQMAKE_INSTALL_ROOT =		${PREFIX}

MODQMAKE_ARGS =		CONFIG+=qbs_enable_project_file_updates

BUILD_DEPENDS =	x11/qt5/qtquickcontrols \
		lang/clazy>=1.5 \
		devel/qbs>=1.15.0

RUN_DEPENDS =	${MODGCC4_CPPDEP} \
		devel/clang-tools-extra \
		devel/gdb \
		devel/gmake \
		devel/qbs>=1.15.0 \
		lang/clazy>=1.5 \
		x11/gtk+3,-guic \
		x11/qt5/qtquickcontrols \
		x11/qt5/qtwebkit

LIB_DEPENDS =	devel/llvm \
		devel/kf5/syntax-highlighting \
		devel/yaml-cpp \
		x11/qt5/qtdeclarative \
		x11/qt5/qtserialport \
		x11/qt5/qtscript \
		x11/qt5/qtsvg \
		x11/qt5/qttools

PORTHOME =		${WRKDIR}

NO_TEST =		Yes

FAKE_FLAGS =		INSTALL_ROOT=${WRKINST}${TRUEPREFIX}

CONFIGURE_ENV =		LLVM_INSTALL_DIR=${LOCALBASE} \
			QBS_INSTALL_DIR=${LOCALBASE} \
			KSYNTAXHIGHLIGHTING_LIB_DIR="${LOCALBASE}/lib" \
			PYTHON_INSTALL_DIR=${MODPY_BIN} \
			KSYNTAXHIGHLIGHTING_INCLUDE_DIR="${LOCALBASE}/include/KF5/KSyntaxHighlighting" \
			QTC_DISABLE_CLANG_REFACTORING=0


GDB_ADJ_FILES = \
	src/plugins/debugger/debuggeritemmanager.cpp \
	src/tools/qtcreatorcrashhandler/backtracecollector.cpp \
	src/tools/qtpromaker/main.cpp \
	tests/auto/debugger/tst_dumpers.cpp \
	tests/system/suite_general/tst_openqt_creator/testdata/projecttree_creator.tsv

pre-configure:
	cd ${WRKSRC}; sed -i 's,"gdb","egdb",g' ${GDB_ADJ_FILES}
	# use system qbs/syntax-highlighting (qtcreator.pro)
	rm -rf ${WRKSRC}/src/shared/qbs
	rm -rf ${WRKSRC}/src/libs/{3rdparty/syntax-highlighting,yaml-cpp}

post-install:
.for _l _v in ${SHARED_LIBS}
	ln -sf qtcreator/lib${_l}.so.${_v} ${PREFIX}/lib
.endfor

.include <bsd.port.mk>
