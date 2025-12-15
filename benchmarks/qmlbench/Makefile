COMMENT =	QML and QtQuick benchmark tool

# YYYYMMDD
COMMIT_DATE =	20252805
DISTNAME =	qmlbench-0.${COMMIT_DATE}

KDE_COMMIT =	8432321769adee6d7e7c1a36ef1474f8914910a5
DIST_TUPLE +=	kde qt/qt-labs qmlbench ${KDE_COMMIT} .

CATEGORIES =	benchmarks

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Core5Compat Qt6Gui
WANTLIB += Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6Quick3D
WANTLIB += Qt6Quick3DRuntimeRender Qt6Quick3DUtils Qt6ShaderTools
WANTLIB += c m Qt6QmlMeta Qt6QmlWorkerScript

MODULES =	devel/cmake \
		x11/qt6

BUILD_DEPENDS =	graphics/vulkan-loader
RUN_DEPENDS =	graphics/vulkan-loader

LIB_DEPENDS =	x11/qt6/qtdeclarative \
		x11/qt6/qtshadertools \
		x11/qt6/qtquick3d \
		x11/qt6/qt5compat

CONFIGURE_ARGS =	-DQT_GENERATE_SBOM=OFF

WRKDIST =	${WRKDIR}/qmlbench-${KDE_COMMIT}

post-install:
.for p in compareresults decidefps qmlbench
	ln -sf ../lib/qt6/bin/$p ${PREFIX}/bin/$p-qt6
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/qmlbench
	cd ${WRKSRC}/src && pax -rw benchmarks \
		${PREFIX}/share/qmlbench/

.include <bsd.port.mk>
