# $OpenBSD: qt4.port.mk,v 1.8 2016/03/06 23:59:51 zhuk Exp $

# This fragment defines MODQT_* variables to make it easier to substitute
# qt1/qt2/qt3 in a port.
MODQT_OVERRIDE_UIC ?=	Yes
MODQT4_OVERRIDE_UIC ?=	${MODQT_OVERRIDE_UIC}

MODQT4_LIBDIR =	${LOCALBASE}/lib/qt4
MODQT_LIBDIR ?= ${MODQT4_LIBDIR}
MODQT4_INCDIR =	${LOCALBASE}/include/X11/qt4
MODQT_INCDIR ?= ${MODQT4_INCDIR}
MODQT_PKG_CONFIG_PATH ?= ${LOCALBASE}/lib/qt4/pkgconfig
MODQT4_CONFIGURE_ARGS =	--with-qt-includes=${MODQT4_INCDIR} \
			--with-qt-libraries=${MODQT4_LIBDIR}
MODQT_CONFIGURE_ARGS ?=	${MODQT4_CONFIGURE_ARGS}
_MODQT4_SETUP =	MOC=${MODQT4_MOC} \
		MODQT_INCDIR=${MODQT4_INCDIR} \
		MODQT_LIBDIR=${MODQT4_LIBDIR} \
		PKG_CONFIG_PATH=${PKG_CONFIG_PATH}:${MODQT_PKG_CONFIG_PATH}
.if ${MODQT4_OVERRIDE_UIC:L} == "yes"
_MODQT4_SETUP +=UIC=${MODQT4_UIC}
.endif

# may be needed to find plugins
MODQT4_MOC =	${LOCALBASE}/bin/moc4
MODQT_MOC ?=	${MODQT4_MOC}
MODQT4_UIC =	${LOCALBASE}/bin/uic4
MODQT_UIC ?=	${MODQT4_UIC}
MODQT4_QMAKE =	${LOCALBASE}/bin/qmake4
MODQT_QMAKE ?=	${MODQT4_QMAKE}
MODQT4_QTDIR =	${LOCALBASE}/lib/qt4
MODQT_QTDIR ?=	${MODQT4_QTDIR}

MODQT4_LIB_DEPENDS = 	x11/qt4
MODQT_LIB_DEPENDS ?= 	${MODQT4_LIB_DEPENDS}
LIB_DEPENDS += 		${MODQT4_LIB_DEPENDS}

MODQT4_WANTLIB = 	lib/qt4/QtCore
MODQT_WANTLIB ?= 	${MODQT4_WANTLIB}
WANTLIB += 		${MODQT4_WANTLIB}

CONFIGURE_ENV +=${_MODQT4_SETUP}
MAKE_ENV +=	${_MODQT4_SETUP}
MAKE_FLAGS +=	${_MODQT4_SETUP}

.if ${CONFIGURE_STYLE:Mqmake} || ${CONFIGURE_STYLE:Mqmake4}
MAKE_FLAGS +=	CC="${CC}" CXX="${CXX}"
MAKE_FLAGS +=	PREFIX=${PREFIX}
. for _l _v in ${SHARED_LIBS}
MAKE_FLAGS +=	LIB${_l}_VERSION=${_v}
. endfor
.endif

MODQMAKE_PROJECTS ?=	.
MODQMAKE4_PROJECTS ?=	${MODQMAKE_PROJECTS}
MODQMAKE_ARGS ?=
MODQMAKE4_ARGS ?=	${MODQMAKE_ARGS}
MODQMAKE4_ARGS +=	-recursive \
			PREFIX=${PREFIX} \
			QMAKE_CFLAGS="${CFLAGS}" \
			QMAKE_CFLAGS_RELEASE="${CFLAGS}" \
			QMAKE_CXX="${CXX}" \
			QMAKE_CXXFLAGS="${CXXFLAGS}" \
			QMAKE_CXXFLAGS_RELEASE="${CXXFLAGS}"

MODQMAKE_INSTALL_ROOT ?=	${WRKINST}
MODQMAKE4_INSTALL_ROOT ?=	${MODQMAKE_INSTALL_ROOT}
_MODQT4_FAKE_FLAGS =		INSTALL_ROOT=${MODQMAKE4_INSTALL_ROOT}

MODQMAKE4_configure =
MODQMAKE4_build =
MODQMAKE4_install =
.for _qp in ${MODQMAKE4_PROJECTS}
_MODQMAKE4_CD_${_qp:/=_} = \
	cd ${WRKBUILD}; \
	if [ -d ${WRKSRC}/${_qp} ]; then \
		dir=${_qp}; \
	else \
		dir=$$(dirname ${_qp}); \
	fi; \
	mkdir -p $$dir; \
	cd -- $$dir
MODQMAKE4_configure += \
	cd ${WRKSRC}; \
	if [ -d ${_qp} ]; then \
		pro=$$(echo ${_qp}/*.pro); \
	else \
		pro=${_qp}; \
	fi; \
	${_MODQMAKE4_CD_${_qp:/=_}}; \
	echo >&2 ${MODQT4_QMAKE} ${MODQMAKE4_ARGS} ${WRKSRC}/$$pro; \
	${MODQT4_QMAKE} ${MODQMAKE4_ARGS} ${WRKSRC}/$$pro;
MODQMAKE4_build += \
	${_MODQMAKE4_CD_${_qp:/=_}}; \
	${_SYSTRACE_CMD} ${SETENV} ${MAKE_ENV} \
                ${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET};
MODQMAKE4_install += \
	${_MODQMAKE4_CD_${_qp:/=_}}; \
	umask 022; \
	${_FAKESUDO} ${_SYSTRACE_CMD} \
		${SETENV} ${MAKE_ENV} ${FAKE_SETUP} \
		${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} ${_MODQT4_FAKE_FLAGS} \
		-f ${MAKE_FILE} ${FAKE_TARGET};
.endfor
MODQMAKE_configure ?=	${MODQMAKE4_configure}
MODQMAKE_build ?=	${MODQMAKE4_build}
MODQMAKE_install ?=	${MODQMAKE4_install}

.if ${CONFIGURE_STYLE:Mqmake4} || ${CONFIGURE_STYLE:Mqmake}
SEPARATE_BUILD ?=	Yes
. if ${SEPARATE_BUILD:L} != "no"
.  if ${SEPARATE_BUILD:L} != "yes"
ERRORS +=	"Fatal: qmake supports only simple SEPARATE_BUILD builds."
.  endif
# "Shadow builds" of qmake can only work in subdirectory
WRKBUILD ?=		${WRKSRC}/build-${MACHINE_ARCH}
. endif

. if !target(do-build) && "${CONFIGURE_STYLE:Nqmake:Nqmake4}" == ""
do-build:
	@${MODQMAKE4_build}
. endif

. if !target(do-install) && "${CONFIGURE_STYLE:Nqmake:Nqmake4}" == ""
do-install:
	@${MODQMAKE4_install}
. endif
.endif
