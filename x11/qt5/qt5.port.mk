# $OpenBSD: qt5.port.mk,v 1.8 2016/03/07 10:13:32 zhuk Exp $

# This fragment defines MODQT_* variables to make it easier to substitute
# qt4/qt5 in a port.
MODQT_OVERRIDE_UIC ?=	Yes
MODQT5_OVERRIDE_UIC ?=	${MODQT_OVERRIDE_UIC}

MODQT5_LIBDIR =	${LOCALBASE}/lib/qt5
MODQT_LIBDIR ?= ${MODQT5_LIBDIR}
MODQT5_INCDIR =	${LOCALBASE}/include/X11/qt5
MODQT_INCDIR ?= ${MODQT5_INCDIR}
MODQT5_CONFIGURE_ARGS =	--with-qt-includes=${MODQT5_INCDIR} \
			--with-qt-libraries=${MODQT5_LIBDIR}
MODQT_CONFIGURE_ARGS ?=	${MODQT5_CONFIGURE_ARGS}
_MODQT5_SETUP =	MOC=${MODQT5_MOC} \
		MODQT_INCDIR=${MODQT5_INCDIR} \
		MODQT_LIBDIR=${MODQT5_LIBDIR}
.if ${MODQT5_OVERRIDE_UIC:L} == "yes"
_MODQT5_SETUP +=UIC=${MODQT5_UIC}
.endif

# may be needed to find plugins
MODQT5_MOC =	${LOCALBASE}/bin/moc-qt5
MODQT_MOC ?=	${MODQT5_MOC}
MODQT5_UIC =	${LOCALBASE}/bin/uic-qt5
MODQT_UIC ?=	${MODQT5_UIC}
MODQT5_QMAKE =	${LOCALBASE}/bin/qmake-qt5
MODQT_QMAKE ?=	${MODQT5_QMAKE}
MODQT5_QTDIR =	${LOCALBASE}/lib/qt5
MODQT_QTDIR ?=	${MODQT5_QTDIR}

_MODQT5_CMAKE_PKGS = \
	Qt5 \
	Qt5Bluetooth \
	Qt5Concurrent \
	Qt5Core \
	Qt5DBus \
	Qt5Declarative \
	Qt5Designer \
	Qt5Enginio \
	Qt5Gui \
	Qt5Help \
	Qt5LinguistTools \
	Qt5Multimedia \
	Qt5MultimediaWidgets \
	Qt5Network \
	Qt5Nfc \
	Qt5OpenGL \
	Qt5OpenGLExtensions \
	Qt5Positioning \
	Qt5PrintSupport \
	Qt5Qml \
	Qt5Quick \
	Qt5QuickTest \
	Qt5QuickWidgets \
	Qt5Script \
	Qt5ScriptTools \
	Qt5Sensors \
	Qt5SerialPort \
	Qt5Sql \
	Qt5Svg \
	Qt5Test \
	Qt5UiTools \
	Qt5WebKit \
	Qt5WebKitWidgets \
	Qt5WebSockets \
	Qt5Widgets \
	Qt5X11Extras \
	Qt5Xml \
	Qt5XmlPatterns
.for _p in ${_MODQT5_CMAKE_PKGS}
_MODQT5_SETUP +=	${_p}_DIR=${MODQT5_LIBDIR}/cmake
.endfor

MODQT5_LIB_DEPENDS = 	x11/qt5
MODQT_LIB_DEPENDS ?= 	${MODQT5_LIB_DEPENDS}
LIB_DEPENDS += 		${MODQT5_LIB_DEPENDS}

CONFIGURE_ENV +=${_MODQT5_SETUP}
MAKE_ENV +=	${_MODQT5_SETUP}
MAKE_FLAGS +=	${_MODQT5_SETUP}

MODQT5_USE_GCC4_MODULE ?=	Yes
.if ${MODQT5_USE_GCC4_MODULE} == "Yes"
  MODULES +=		gcc4
  MODGCC4_LANGS +=	c++
  MODGCC4_ARCHS ?=	*
.endif

.if ${CONFIGURE_STYLE:Mqmake} || ${CONFIGURE_STYLE:Mqmake5}
MAKE_FLAGS +=	CC="${CC}" CXX="${CXX}"
MAKE_FLAGS +=	PREFIX=${PREFIX}
. for _l _v in ${SHARED_LIBS}
MAKE_FLAGS +=	LIB${_l}_VERSION=${_v}
. endfor
.endif

MODQMAKE_PROJECTS ?=	.
MODQMAKE5_PROJECTS ?=	${MODQMAKE_PROJECTS}
MODQMAKE_ARGS ?=
MODQMAKE5_ARGS ?=	${MODQMAKE_ARGS}
MODQMAKE5_ARGS +=	-recursive \
			PREFIX=${PREFIX} \
			QMAKE_CFLAGS="${CFLAGS}" \
			QMAKE_CFLAGS_RELEASE="${CFLAGS}" \
			QMAKE_CXX="${CXX}" \
			QMAKE_CXXFLAGS="${CXXFLAGS}" \
			QMAKE_CXXFLAGS_RELEASE="${CXXFLAGS}"

MODQMAKE_INSTALL_ROOT ?=	${WRKINST}
MODQMAKE5_INSTALL_ROOT ?=	${MODQMAKE_INSTALL_ROOT}
_MODQT5_FAKE_FLAGS =		INSTALL_ROOT=${MODQMAKE5_INSTALL_ROOT}

MODQMAKE5_configure =
MODQMAKE5_build =
MODQMAKE5_install =
.for _qp in ${MODQMAKE5_PROJECTS}
_MODQMAKE5_CD_${_qp:/=_} = \
	cd ${WRKBUILD}; \
	if [ -d ${WRKSRC}/${_qp} ]; then \
		dir=${_qp}; \
	else \
		dir=$$(dirname ${_qp}); \
	fi; \
	mkdir -p $$dir; \
	cd -- $$dir
MODQMAKE5_configure += \
	cd ${WRKSRC}; \
	if [ -d ${_qp} ]; then \
		pro=$$(echo ${_qp}/*.pro); \
	else \
		pro=${_qp}; \
	fi; \
	${_MODQMAKE5_CD_${_qp:/=_}}; \
	echo >&2 ${MODQT5_QMAKE} ${MODQMAKE5_ARGS} ${WRKSRC}/$$pro; \
	${MODQT5_QMAKE} ${MODQMAKE5_ARGS} ${WRKSRC}/$$pro;
MODQMAKE5_build += \
	${_MODQMAKE5_CD_${_qp:/=_}}; \
	${_MODQMAKE5_build_SYSTRACE_CMD} ${SETENV} ${MAKE_ENV} \
                ${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET};
MODQMAKE5_install += \
	${_MODQMAKE5_CD_${_qp:/=_}}; \
	umask 022; \
	${_FAKESUDO} ${_MODQMAKE5_install_SYSTRACE_CMD} \
		${SETENV} ${MAKE_ENV} ${FAKE_SETUP} \
		${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} ${_MODQT5_FAKE_FLAGS} \
		-f ${MAKE_FILE} ${FAKE_TARGET};
.endfor
MODQMAKE_configure ?=	${MODQMAKE5_configure}
MODQMAKE_build ?=	${MODQMAKE5_build}
MODQMAKE_install ?=	${MODQMAKE5_install}

.if ${CONFIGURE_STYLE:Mqmake5} || ${CONFIGURE_STYLE:Mqmake}
SEPARATE_BUILD ?=	Yes
. if ${SEPARATE_BUILD:L} != "no"
.  if ${SEPARATE_BUILD:L} != "yes"
ERRORS +=	"Fatal: qmake supports only simple SEPARATE_BUILD builds."
.  endif
# "Shadow builds" of qmake can only work in subdirectory
WRKBUILD ?=		${WRKSRC}/build-${MACHINE_ARCH}
. endif

# Could not add ${_SYSTRACE_CMD} unconditionally since in case of
# do-build bsd.port.mk adds ${_SYSTRACE_CMD} itself.
. if !target(do-build) && "${CONFIGURE_STYLE:Nqmake:Nqmake5}" == ""
do-build:
	@${MODQMAKE5_build}
. else
_MODQMAKE5_build_SYSTRACE_CMD =		${_SYSTRACE_CMD}
. endif

# Could not add ${_SYSTRACE_CMD} unconditionally since in case of
# do-install bsd.port.mk adds ${_SYSTRACE_CMD} itself.
. if !target(do-install) && "${CONFIGURE_STYLE:Nqmake:Nqmake5}" == ""
do-install:
	@${MODQMAKE5_install}
. else
_MODQMAKE5_install_SYSTRACE_CMD =	${_SYSTRACE_CMD}
. endif
.endif
