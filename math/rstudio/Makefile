# $OpenBSD: Makefile,v 1.2 2020/07/02 18:46:50 bcallah Exp $

# XXX: patches/patch-src_cpp_core_r_util_REnvironmentPosix_cpp
# must be kept in sync with math/R shlib bumps.

# Upstream says no more 32-bit support.
# Not really an issue because qtwebengine is a bigger problem.
ONLY_FOR_ARCHS =	${LP64_ARCHS}

V =		1.3.959
COMMENT =	Integrated Development Environment (IDE) for R
PKGNAME =	rstudio-${V}
REVISION =	0
CATEGORIES =	math x11

HOMEPAGE =	https://www.rstudio.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# AGPLv3 only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5OpenGL Qt5Positioning Qt5PrintSupport Qt5Qml Qt5Quick
WANTLIB += Qt5QuickWidgets Qt5Sensors Qt5Sql Qt5Svg Qt5WebChannel
WANTLIB += Qt5WebEngine Qt5WebEngineCore Qt5WebEngineWidgets Qt5Widgets
WANTLIB += Qt5Xml Qt5XmlPatterns boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_program_options-mt boost_random-mt boost_regex-mt
WANTLIB += boost_system-mt boost_thread-mt c crypto m pam ssl
WANTLIB += util uuid z lib/R/lib/R lib/inotify/inotify

# XXX: Ports does not permit GH_* and MASTER_SITES together.
MASTER_SITES0 =	https://github.com/rstudio/rstudio/archive/
MASTER_SITES1 =	https://s3.amazonaws.com/rstudio-buildtools/dictionaries/
MASTER_SITES2 =	https://s3.amazonaws.com/rstudio-buildtools/
DISTFILES =	rstudio-${V}{v${V}}.tar.gz:0 \
		core-dictionaries.zip:1 \
		gin-${GIN_VERSION}.zip:2 \
		gwt-${GWT_VERSION}.zip:2 \
		mathjax-27.zip:2

# CMake looks for qmake-qt5 during configure...
MODULES =	devel/cmake \
		java \
		x11/qt5

MODJAVA_VER =	1.8+

# Needed for gwt to build all the web pages.
# Not sure MODJAVA_BUILD=ant is appropriate here.
BUILD_DEPENDS =	devel/apache-ant

LIB_DEPENDS =	devel/boost \
		devel/libinotify \
		math/R \
		security/openpam \
		sysutils/e2fsprogs \
		x11/qt5/qtsensors \
		x11/qt5/qtsvg \
		x11/qt5/qtwebengine \
		x11/qt5/qtxmlpatterns

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

CONFIGURE_ARGS =	-DBoost_INCLUDE_DIR="${LOCALBASE}/include" \
			-DQT_QMAKE_EXECUTABLE="${LOCALBASE}/bin/qmake-qt5" \
			-DQt5WebEngine_DIR="${LOCALBASE}/lib/qt5/cmake/Qt5WebEngine" \
			-DQt5WebEngineWidgets_DIR="${LOCALBASE}/lib/qt5/cmake/Qt5WebEngineWidgets" \
			-DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib/inotify -linotify -rpath ${LOCALBASE}/lib/inotify -rpath ${LOCALBASE}/lib/R/lib"

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/rstudio-${V}

GIN_VERSION =	2.1.2
GWT_VERSION =	2.8.1

# Put everything where CMake expects it to be.
post-extract:
	@mkdir -p ${WRKSRC}/dependencies/common/dictionaries
	@mv ${WRKDIR}/en_* ${WRKSRC}/dependencies/common/dictionaries
	@mv ${WRKDIR}/mathjax-* ${WRKSRC}/dependencies/common
	@mkdir -p ${WRKSRC}/src/gwt/lib/gwt
	@mv ${WRKDIR}/gwt-${GWT_VERSION} ${WRKSRC}/src/gwt/lib/gwt/${GWT_VERSION}
	@mkdir -p ${WRKSRC}/src/gwt/lib/gin/${GIN_VERSION}
	@mv ${WRKDIR}/*.jar ${WRKSRC}/src/gwt/lib/gin/${GIN_VERSION}

# desktop/CMakeLists.txt: too much for manual patching...
# core/system/PosixSystem.cpp: Unfortunate, but OpenBSD
# does not provide a way to get the path of an executable
# at runtime easily.
do-gen:
	sed -i 's,/usr/share,${LOCALBASE}/share,g' \
		${WRKSRC}/src/cpp/desktop/CMakeLists.txt
	sed -i 's,LOCALBASE,${LOCALBASE},g' \
		${WRKSRC}/src/cpp/core/system/PosixSystem.cpp

# No binary in ${LOCALBASE}/bin by default.
post-install:
	${SUBST_CMD} -c -m 555 ${FILESDIR}/rstudio.sh ${PREFIX}/bin/rstudio

.include <bsd.port.mk>
