# This fragment defines MODQT_* variables to make it easier to substitute
# qt4/qt5 in a port.
MODQT_OVERRIDE_UIC ?=	Yes
MODQT6_OVERRIDE_UIC ?=	${MODQT_OVERRIDE_UIC}

MODQT6_LIBDIR =	${LOCALBASE}/lib/qt6
MODQT_LIBDIR ?= ${MODQT6_LIBDIR}
MODQT6_INCDIR =	${LOCALBASE}/include/X11/qt6
MODQT_INCDIR ?=	${MODQT6_INCDIR}

_MODQT6_SETUP =	MOC=${MODQT6_MOC} \
		MODQT_INCDIR=${MODQT6_INCDIR} \
		MODQT_LIBDIR=${MODQT6_LIBDIR}
.if ${MODQT6_OVERRIDE_UIC:L} == "yes"
_MODQT6_SETUP +=UIC=${MODQT6_UIC}
.endif

# may be needed to find plugins
MODQT6_MOC =		${LOCALBASE}/bin/moc-qt6
MODQT_MOC ?=		${MODQT6_MOC}
MODQT6_UIC =		${LOCALBASE}/bin/uic-qt6
MODQT_UIC ?=		${MODQT6_UIC}
MODQT6_QMAKE =		${LOCALBASE}/bin/qmake-qt6
MODQT_QMAKE ?=		${MODQT6_QMAKE}
MODQT6_QTDIR =		${LOCALBASE}/lib/qt6
MODQT_QTDIR ?=		${MODQT6_QTDIR}
MODQT6_LRELEASE =	${LOCALBASE}/bin/lrelease-qt6
MODQT_LRELEASE ?=	${MODQT6_LRELEASE}
MODQT6_LUPDATE =	${LOCALBASE}/bin/lupdate-qt6
MODQT_LUPDATE ?=	${MODQT6_LUPDATE}

_MODQT6_CMAKE_PKGS = \
	Qt6 \
	Qt6Core5Compat \
	Qt6Concurrent \
	Qt6Core \
	Qt6DBus \
	Qt6Gui \
	Qt6Network \
	Qt6OpenGL \
	Qt6PrintSupport \
	Qt6Sql \
	Qt6Test \
	Qt6Widgets \
	Qt6Xml \
	Qt6EglFSDeviceIntegration \
	Qt6EglFsKmsSupport \
	Qt6OpenGLExtensions \
	Qt6XcbQpa \
	Qt6EglFsKmsGbmSupport \
	Qt6OpenGLWidgets \
	Qt6Qml \
	Qt6Quick \
	Qt6QuickParticles \
	Qt6QuickTest \
	Qt6QuickWidgets \
	Qt6QuickShapes \
	Qt6QmlModels \
	Qt6QmlWorkerScript \
	Qt6Quick3D \
	Qt6Quick3DAssetImport \
	Qt6Quick3DRuntimeRender \
	Qt6Quick3DUtils \
	Qt6QuickControls2 \
	Qt6QuickTemplates2 \
	Qt6QuickControls2Impl \
	Qt6ShaderTools \
	Qt6Svg \
	Qt6SvgWidgets \
	Qt6Designer \
	Qt6DesignerComponents \
	Qt6Help \
	Qt6UiTools
.for _p in ${_MODQT6_CMAKE_PKGS}
_MODQT6_SETUP +=	${_p}_DIR=${MODQT6_LIBDIR}/cmake
.endfor

MODQT6_LIB_DEPENDS =	x11/qt6/qtbase
MODQT_LIB_DEPENDS ?=	${MODQT6_LIB_DEPENDS}

MODQT6_BUILD_DEPENDS =	x11/qt6/qttools
MODQT_BUILD_DEPENDS ?=	${MODQT6_BUILD_DEPENDS}

MODQT_DEPS ?=		Yes
MODQT6_DEPS ?=		${MODQT_DEPS}

.if ${MODQT6_DEPS:L} == "yes"
LIB_DEPENDS +=		${MODQT6_LIB_DEPENDS}
BUILD_DEPENDS += 	${MODQT6_BUILD_DEPENDS}
.endif

CONFIGURE_ENV +=	${_MODQT6_SETUP}
MAKE_ENV +=		${_MODQT6_SETUP}
MAKE_FLAGS +=		${_MODQT6_SETUP}

MODQT6_USE_CXX17 ?=	Yes

.if ${MODQT6_USE_CXX17:L} == "yes"
COMPILER ?= base-clang ports-gcc
ONLY_FOR_ARCHS ?= ${CXX11_ARCHS}
.endif

.include "Makefile.version"

MODQT6_VERSION =	${QT6_VERSION}
MODQT_VERSION ?=	${MODQT6_VERSION}

_MODQT6_PKGMATCH !=
show_deps: patch
	@cpkgs=$$(echo ${_MODQT6_CMAKE_PKGS:NQt6} | sed 's/ /|/g'); \
	find ${WRKSRC} \( -name '*.pr[iof]' -o -iname '*cmake*' \) -exec \
		egrep -hA 2 "\\<(qtHaveModule|QT_CONFIG|$$cpkgs)\\>|Qt6::" {} +
