# $OpenBSD: Makefile,v 1.20 2016/12/31 12:53:42 zhuk Exp $

COMMENT =		cross-platform IDE for use with Qt
V = 			4.1.0
DISTNAME =		qt-creator-opensource-src-${V}
PKGNAME =		qt-creator-${V}

# TODO:
# * Verify that patch for src/shared/qbs/src/lib/corelib/tools/processutils.cpp
#   does what it is supposed to do.

SHARED_LIBS +=	Aggregation               0.0 # 0.0
SHARED_LIBS +=	CPlusPlus                 0.0 # 0.0
SHARED_LIBS +=	ExtensionSystem           0.0 # 0.0
SHARED_LIBS +=	GLSL                      0.0 # 0.0
SHARED_LIBS +=	LanguageUtils             0.0 # 0.0
SHARED_LIBS +=	QmlDebug                  0.0 # 0.0
SHARED_LIBS +=	QmlEditorWidgets          0.0 # 0.0
SHARED_LIBS +=	QmlJS                     0.0 # 0.0
SHARED_LIBS +=	QtcSsh                    0.0 # 0.0
SHARED_LIBS +=	Utils                     0.0 # 0.0
SHARED_LIBS +=	qbscore                   0.0 # 0.0
SHARED_LIBS +=	Clangbackendipc           1.0 # 1.0
SHARED_LIBS +=	Sqlite                    1.0 # 1.0
SHARED_LIBS +=	Timeline                  1.0 # 1.0
SHARED_LIBS +=	qbsqtprofilesetup         1.4 # 1.4
SHARED_LIBS +=  Modeling                  1.0 # 1.0

MAKE_FLAGS =	BUILD_TESTS=1
.for _l _v in ${SHARED_LIBS}
MAKE_FLAGS +=	LIB${_l}_VERSION=${_v}
.endfor

CATEGORIES =	devel editors

HOMEPAGE =	https://www.qt.io/ide/

# XXX GPLv3 with some exceptions
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c kvm m pthread
WANTLIB += GL Qt5Concurrent Qt5Core Qt5Designer Qt5DesignerComponents
WANTLIB += Qt5Gui Qt5Help Qt5Network Qt5PrintSupport Qt5Qml Qt5Quick
WANTLIB += Qt5QuickWidgets Qt5Script Qt5Sql Qt5Svg Qt5WebKit Qt5WebKitWidgets
WANTLIB += Qt5Widgets Qt5Xml

MASTER_SITES =	https://download.qt.io/official_releases/qtcreator/${V:R}/${V}/

MODULES =	x11/qt5 devel/qmake gcc4
MODQMAKE_INSTALL_ROOT =		${PREFIX}
# qtcreator.sh is created with custom LINK?= in Makefile
MODQT5_USE_GCC4_MODULE =	No
MODGCC4_LANGS =			c++
MODGCC4_ARCHS =			*

BUILD_DEPENDS =	x11/qt5/qtquickcontrols \
		x11/qt5/qtdeclarative,-docindex \
		x11/qt5/qtdoc,-docindex \
		x11/qt5/qtquickcontrols,-docindex \
		x11/qt5/qtquickcontrols2,-docindex \
		x11/qt5/qtsensors,-docindex

RUN_DEPENDS = 	devel/gdb \
		devel/gmake \
		lang/gcc/${MODGCC4_VERSION},-c++ \
		x11/gtk+3,-guic \
		x11/qt5/qtquickcontrols

LIB_DEPENDS =	x11/qt5/qtdeclarative \
		x11/qt5/qtscript \
		x11/qt5/qtsvg \
		x11/qt5/qttools \
		x11/qt5/qtwebkit

PORTHOME =		${WRKDIR}

ALL_TARGET = 		all qch_docs

#NO_TEST =		Yes

FAKE_FLAGS =		INSTALL_ROOT=${WRKINST}${TRUEPREFIX}
GDB_ADJ_FILES = \
	src/plugins/debugger/debuggeritemmanager.cpp \
	src/tools/qtcreatorcrashhandler/backtracecollector.cpp \
	src/tools/qtpromaker/main.cpp \
	tests/auto/debugger/tst_dumpers.cpp \
	tests/system/suite_general/tst_openqt_creator/testdata/projecttree_creator.tsv

pre-configure:
	cd ${WRKSRC}; sed -i 's,"gdb","egdb",g' ${GDB_ADJ_FILES}

post-install:
.for _l _v in ${SHARED_LIBS}
	ln -sf qtcreator/lib${_l}.so.${_v} ${PREFIX}/lib
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qtcreator
	${INSTALL_DATA} ${WRKBUILD}/share/doc/qtcreator/qtcreator.qch \
	    ${PREFIX}/share/doc/qtcreator/qtcreator.qch

.include <bsd.port.mk>
