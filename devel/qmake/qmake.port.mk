# $OpenBSD: qmake.port.mk,v 1.3 2016/03/26 21:03:03 zhuk Exp $

.if empty(CONFIGURE_STYLE)
CONFIGURE_STYLE =	qmake
.endif

.if ${MODULES:Mx11/qt?} == ${MODULES}
ERRORS +=	qmake port module requires one of the x11/qt* modules
.endif

MAKE_FLAGS +=	CC="${CC}" CXX="${CXX}"
MAKE_FLAGS +=	PREFIX=${PREFIX}
.for _l _v in ${SHARED_LIBS}
MAKE_FLAGS +=	LIB${_l}_VERSION=${_v}
.endfor

MODQMAKE_PROJECTS ?=	.
MODQMAKE_ARGS +=	-recursive \
			PREFIX=${PREFIX} \
			QMAKE_CFLAGS="${CFLAGS}" \
			QMAKE_CFLAGS_RELEASE="${CFLAGS}" \
			QMAKE_CXX="${CXX}" \
			QMAKE_CXXFLAGS="${CXXFLAGS}" \
			QMAKE_CXXFLAGS_RELEASE="${CXXFLAGS}"

MODQMAKE_INSTALL_ROOT ?=	${WRKINST}
_MODQMAKE_FAKE_FLAGS =		INSTALL_ROOT=${MODQMAKE_INSTALL_ROOT}

MODQMAKE_configure =
MODQMAKE_build =
MODQMAKE_install =
.for _qp in ${MODQMAKE_PROJECTS}
_MODQMAKE_CD_${_qp:/=_} = \
	cd ${WRKBUILD}; \
	if [ -d ${WRKSRC}/${_qp} ]; then \
		dir=${_qp}; \
	else \
		dir=$$(dirname ${_qp}); \
	fi; \
	mkdir -p $$dir; \
	cd -- $$dir
MODQMAKE_configure += \
	cd ${WRKSRC}; \
	if [ -d ${_qp} ]; then \
		pro=$$(echo ${_qp}/*.pro); \
	else \
		pro=${_qp}; \
	fi; \
	${_MODQMAKE_CD_${_qp:/=_}}; \
	echo >&2 ${MODQT_QMAKE} ${MODQMAKE_ARGS} ${WRKSRC}/$$pro; \
	${MODQT_QMAKE} ${MODQMAKE_ARGS} ${WRKSRC}/$$pro;
MODQMAKE_build += \
	${_MODQMAKE_CD_${_qp:/=_}}; \
	${_MODQMAKE_build_SYSTRACE_CMD} ${SETENV} ${MAKE_ENV} \
                ${MAKE_PROGRAM} ${MAKE_FLAGS} -f Makefile ${ALL_TARGET};
MODQMAKE_install += \
	${_MODQMAKE_CD_${_qp:/=_}}; \
	umask 022; \
	${_FAKESUDO} ${_MODQMAKE_install_SYSTRACE_CMD} \
		${SETENV} ${MAKE_ENV} ${FAKE_SETUP} \
		${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} ${_MODQMAKE_FAKE_FLAGS} \
		-f Makefile ${FAKE_TARGET};
.endfor

.if ${CONFIGURE_STYLE:Mqmake}
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
. if !target(do-build) && "${CONFIGURE_STYLE:Nqmake}" == ""
do-build:
	@${MODQMAKE_build}
. else
_MODQMAKE_build_SYSTRACE_CMD =		${_SYSTRACE_CMD}
. endif

# Could not add ${_SYSTRACE_CMD} unconditionally since in case of
# do-install bsd.port.mk adds ${_SYSTRACE_CMD} itself.
. if !target(do-install) && "${CONFIGURE_STYLE:Nqmake}" == ""
do-install:
	@${MODQMAKE_install}
. else
_MODQMAKE_install_SYSTRACE_CMD =	${_SYSTRACE_CMD}
. endif
.endif		# CONFIGURE_STYLE:Mqmake
