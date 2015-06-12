# $OpenBSD: go.port.mk,v 1.3 2015/06/12 05:20:48 czarkoff Exp $

ONLY_FOR_ARCHS ?=	${GO_ARCHS}

MODGO_BUILDDEP ?=	Yes

MODGO_RUN_DEPENDS =	lang/go
MODGO_BUILD_DEPENDS =	lang/go

.if ${NO_BUILD:L} == "no" && ${MODGO_BUILDDEP:L} == "yes"
BUILD_DEPENDS +=	${MODGO_BUILD_DEPENDS}
.endif

MODGO_PACKAGES =	go/pkg/openbsd_${MACHINE_ARCH:S/i386/386/}
MODGO_SOURCES =		go/src
MODGO_TOOLS =		go/pkg/tool/openbsd_${MACHINE_ARCH:S/i386/386/}

SUBST_VARS +=		MODGO_TOOLS MODGO_PACKAGES MODGO_SOURCES

MODGO_SUBDIR ?=		${WRKDIST}
MODGO_TYPE ?=		bin
MODGO_WORKSPACE ?=	${WRKDIR}/go
MODGO_CMD ?=		unset GOPATH; export GOPATH="${MODGO_WORKSPACE}"; go
MODGO_BUILD_CMD =	${MODGO_CMD} install ${MODGO_FLAGS}
MODGO_TEST_CMD =	${MODGO_CMD} test ${MODGO_FLAGS}

.if defined(GH_ACCOUNT) && defined(GH_PROJECT)
ALL_TARGET ?=		github.com/${GH_ACCOUNT}/${GH_PROJECT}
.endif
TEST_TARGET ?=		${ALL_TARGET}

SEPARATE_BUILD ?=	Yes
WRKSRC ?=		${MODGO_WORKSPACE}/src/${ALL_TARGET}

MODGO_SETUP_WORKSPACE =	mkdir -p ${WRKSRC:H}; mv ${MODGO_SUBDIR} ${WRKSRC};

# Go tends to ignore environment and place some files to system-wide
# directories.  To prevent such behavior, this modules fixes paths in
# auto-generated build instructions, and then feeds fixed script to shell
# The "operation not permitted" filter is needed because Go outputs permission
# error if USE_SYSTRACE=Yes option is set.
MODGO_BUILD_TARGET =	${MODGO_BUILD_CMD} ${ALL_TARGET} 2>&1 | sed -E \
				-e 's, ${LOCALBASE}/go, ${MODGO_WORKSPACE},' \
				-e '/operation not permitted/d' \
				-e 's,\$$WORK,${WRKBUILD},g' | sh -v

.if ${MODGO_TYPE:L:Mbin}
MODGO_FLAGS ?=		-x -work
MODGO_INSTALL_TARGET += cp ${MODGO_WORKSPACE}/bin/* ${PREFIX}/bin
.endif

# Go source files serve the purpose of libraries, so sources should be included
# with library ports.
.if ${MODGO_TYPE:L:Mlib}
MODGO_FLAGS ?=		-a -x -work
MODGO_INSTALL_TARGET =	${INSTALL_DATA_DIR} ${PREFIX}/go; \
			cp -R ${MODGO_WORKSPACE}/pkg \
			      ${MODGO_WORKSPACE}/src \
					${PREFIX}/go;
.endif

MODGO_TEST_TARGET =	${MODGO_TEST_CMD} ${TEST_TARGET}

.if empty(CONFIGURE_STYLE)
.  if !target(post-patch)
post-patch:
	${MODGO_SETUP_WORKSPACE}
.  endif

.  if !target(do-build)
do-build:
	${MODGO_BUILD_TARGET}
.  endif

.  if !target(do-install)
do-install:
	${MODGO_INSTALL_TARGET}
.  endif

.  if !target(do-test)
do-test:
	${MODGO_TEST_TARGET}
.  endif
.endif
