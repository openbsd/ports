# $OpenBSD: Makefile,v 1.38 2018/04/16 20:01:22 rsadowski Exp $

#Qt5Webkit
USE_WXNEEDED =		Yes

COMMENT =		cross-platform IDE for use with Qt
V =			4.6.0
DISTNAME =		qt-creator-opensource-src-${V}
PKGNAME =		qt-creator-${V}
REVISION =		0

SHARED_LIBS +=	Aggregation               0.0 # 0.0
SHARED_LIBS +=	CPlusPlus                 1.0 # 0.0
SHARED_LIBS +=	ExtensionSystem           3.0 # 0.0
SHARED_LIBS +=	GLSL                      0.0 # 0.0
SHARED_LIBS +=	LanguageUtils             0.0 # 0.0
SHARED_LIBS +=	QmlDebug                  3.0 # 0.0
SHARED_LIBS +=	QmlEditorWidgets          0.0 # 0.0
SHARED_LIBS +=	QmlJS                     4.0 # 0.0
SHARED_LIBS +=	QtcSsh                    0.0 # 0.0
SHARED_LIBS +=	Utils                     4.0 # 0.0
SHARED_LIBS +=	Sqlite                    3.0 # 1.0
SHARED_LIBS +=	Timeline                  3.0 # 1.0
SHARED_LIBS +=	Modeling                  3.0 # 1.0
SHARED_LIBS +=	FlameGraph                0.0 # 4.2
SHARED_LIBS +=	Clangsupport              0.0 # 4.5

MAKE_FLAGS =	BUILD_TESTS=1
.for _l _v in ${SHARED_LIBS}
MAKE_FLAGS +=	LIB${_l}_VERSION=${_v}
.endfor

CATEGORIES =	devel editors

HOMEPAGE =	https://www.qt.io/ide/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3 with the "Qt Company GPL Exception 1.0"
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5Designer
WANTLIB += Qt5DesignerComponents Qt5Gui Qt5Help Qt5Network Qt5PrintSupport
WANTLIB += Qt5Qml Qt5Quick Qt5QuickWidgets Qt5Script Qt5Sql Qt5Svg
WANTLIB += Qt5Widgets Qt5Xml botan-1.10 c clang m qbscore qbsqtprofilesetup

MASTER_SITES =	https://download.qt.io/official_releases/qtcreator/${V:R}/${V}/

MODULES =	x11/qt5 \
		devel/qmake

MODQMAKE_INSTALL_ROOT =		${PREFIX}

MODQMAKE_ARGS =		USE_SYSTEM_BOTAN=1 \
			CONFIG+=qbs_enable_project_file_updates

# qtcreator.sh is created with custom LINK?= in Makefile
MODQT5_USE_CXX11 =	No
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	x11/qt5/qtquickcontrols \
		devel/qbs

RUN_DEPENDS =	devel/gdb \
		devel/qbs \
		devel/gmake \
		${MODGCC4_CPPDEP} \
		x11/gtk+3,-guic \
		x11/qt5/qtwebkit \
		x11/qt5/qtquickcontrols

LIB_DEPENDS =	x11/qt5/qtdeclarative \
		x11/qt5/qtsvg \
		x11/qt5/qttools \
		security/botan \
		x11/qt5/qtscript \
		devel/llvm

PORTHOME =		${WRKDIR}

ALL_TARGET =		all

NO_TEST =		Yes

FAKE_FLAGS =		INSTALL_ROOT=${WRKINST}${TRUEPREFIX}

CONFIGURE_ENV =		QBS_INSTALL_DIR=${LOCALBASE} \
			LLVM_INSTALL_DIR=${LOCALBASE}

GDB_ADJ_FILES = \
	src/plugins/debugger/debuggeritemmanager.cpp \
	src/tools/qtcreatorcrashhandler/backtracecollector.cpp \
	src/tools/qtpromaker/main.cpp \
	tests/auto/debugger/tst_dumpers.cpp \
	tests/system/suite_general/tst_openqt_creator/testdata/projecttree_creator.tsv

pre-configure:
	cd ${WRKSRC}; sed -i 's,"gdb","egdb",g' ${GDB_ADJ_FILES}
	# use system qbs (qtcreator.pro)
	rm -rf ${WRKSRC}/src/shared/qbs

post-install:
.for _l _v in ${SHARED_LIBS}
	ln -sf qtcreator/lib${_l}.so.${_v} ${PREFIX}/lib
.endfor

.include <bsd.port.mk>
