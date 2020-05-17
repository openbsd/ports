# $OpenBSD: go.port.mk,v 1.31 2020/05/17 13:08:20 ajacoutot Exp $

ONLY_FOR_ARCHS ?=	${GO_ARCHS}

MODGO_BUILDDEP ?=	Yes

MODGO_DIST_SUBDIR ?=	go_modules

MASTER_SITE_ATHENS =	https://proxy.golang.org/

MODGO_MASTER_SITESN =	9
MASTER_SITES${MODGO_MASTER_SITESN} ?= ${MASTER_SITE_ATHENS}

MODGO_RUN_DEPENDS =	lang/go
MODGO_BUILD_DEPENDS =	lang/go

.if ${NO_BUILD:L} == "no" && ${MODGO_BUILDDEP:L} == "yes"
BUILD_DEPENDS +=	${MODGO_BUILD_DEPENDS}
.endif

.if ${MACHINE_ARCH} == "amd64"
_GOARCH =	amd64
.elif ${MACHINE_ARCH} == "arm"
_GOARCH =	arm
.elif ${MACHINE_ARCH} == "aarch64"
_GOARCH =	arm64
.elif ${MACHINE_ARCH} == "i386"
_GOARCH =	386
.endif

MODGO_PACKAGE_PATH =	${PREFIX}/go-pkg
MODGO_PACKAGES =	go-pkg/pkg/openbsd_${_GOARCH}
MODGO_SOURCES =		go-pkg/src
MODGO_TOOLS =		go-pkg/tool/openbsd_${_GOARCH}

SUBST_VARS +=		MODGO_TOOLS MODGO_PACKAGES MODGO_SOURCES

MODGO_SUBDIR ?=		${WRKDIST}
MODGO_TYPE ?=		bin
MODGO_WORKSPACE ?=	${WRKDIR}/go
MODGO_GOCACHE ?=	${WRKDIR}/go-cache
MODGO_GOPATH ?=		${MODGO_WORKSPACE}:${MODGO_PACKAGE_PATH}
# We cannot assume that the maching running the built code will have SSE,
# even though the machine building the package has SSE. As such, we need
# to explicitly disable SSE on i386 builds.
MAKE_ENV +=		GO386=387
MAKE_ENV +=		GOCACHE="${MODGO_GOCACHE}"

MODGO_CMD ?=		${SETENV} ${MAKE_ENV} go
MODGO_BUILD_CMD =	${MODGO_CMD} install ${MODGO_FLAGS}
MODGO_TEST_CMD =	${MODGO_CMD} test ${MODGO_FLAGS} ${MODGO_TEST_FLAGS}
MODGO_BINDIR ?=		bin

.if ! empty(MODGO_LDFLAGS)
MODGO_BUILD_CMD +=	-ldflags="${MODGO_LDFLAGS}"
MODGO_TEST_CMD +=	-ldflags="${MODGO_LDFLAGS}"
.endif

.if defined(MODGO_MODNAME)
EXTRACT_SUFX ?=		.zip
PKGNAME ?=		${DISTNAME:S/-v/-/}
ALL_TARGET ?=		${MODGO_MODNAME}
DISTFILES =		${DISTNAME}${EXTRACT_SUFX}{${MODGO_VERSION}${EXTRACT_SUFX}}
EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}
MASTER_SITES ?=		${MASTER_SITE_ATHENS}${MODGO_MODNAME}/@v/
.  for _modpath _modver in ${MODGO_MODULES}
DISTFILES +=	${MODGO_DIST_SUBDIR}/${_modpath}/@v/${_modver}.zip{${_modpath}/@v/${_modver}.zip}:${MODGO_MASTER_SITESN}
.  endfor
.  for _modpath _modver in ${MODGO_MODFILES}
DISTFILES +=	${MODGO_DIST_SUBDIR}/${_modpath}/@v/${_modver}.mod{${_modpath}/@v/${_modver}.mod}:${MODGO_MASTER_SITESN}
.  endfor
MAKE_ENV +=		GOPROXY=file://${DISTDIR}/${MODGO_DIST_SUBDIR}
MAKE_ENV +=		GO111MODULE=on GOPATH="${MODGO_GOPATH}"
.else
# ports are not allowed to fetch from the network at build time; point
# GOPROXY at an unreachable host so that failures are also visible to
# developers who don't have PORTS_PRIVSEP and a "deny .. _pbuild" PF rule.
MAKE_ENV +=		GOPROXY=invalid://ports.should.not.fetch.at.buildtime/
MAKE_ENV +=		GO111MODULE=off GOPATH="${MODGO_GOPATH}"
.  if defined(GH_ACCOUNT) && defined(GH_PROJECT)
ALL_TARGET ?=          github.com/${GH_ACCOUNT}/${GH_PROJECT}
.  endif
.endif

MODGO_TEST_TARGET ?=	cd ${WRKSRC} && ${MODGO_CMD} test ${ALL_TARGET}

SEPARATE_BUILD ?=	Yes

CATEGORIES +=		lang/go

MODGO_BUILD_TARGET =	${MODGO_BUILD_CMD} ${ALL_TARGET}
MODGO_FLAGS +=		-v -p ${MAKE_JOBS}

.if empty(DEBUG)
# by default omit symbol table, debug information and DWARF symbol table
MODGO_LDFLAGS +=	-s -w
.else
MODGO_FLAGS +=		-x
.endif

.if empty(MODGO_MODNAME)
WRKSRC ?=		${MODGO_WORKSPACE}/src/${ALL_TARGET}
MODGO_SETUP_WORKSPACE =	mkdir -p ${WRKSRC:H}; mv ${MODGO_SUBDIR} ${WRKSRC};
.else
WRKSRC ?=		${WRKDIR}/${MODGO_MODNAME}@${MODGO_VERSION}
MODGO_SETUP_WORKSPACE =	ln -sf ${WRKSRC} ${WRKDIR}/${MODGO_MODNAME}
.endif

INSTALL_STRIP =
.if ${MODGO_TYPE:L:Mbin}
MODGO_INSTALL_TARGET =	${INSTALL_PROGRAM_DIR} ${PREFIX}/${MODGO_BINDIR} && \
			${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/* \
				${PREFIX}/${MODGO_BINDIR};
.endif

# Go source files serve the purpose of libraries, so sources should be included
# with library ports.
.if ${MODGO_TYPE:L:Mlib}
MODGO_INSTALL_TARGET +=	${INSTALL_DATA_DIR} ${MODGO_PACKAGE_PATH} && \
			cd ${MODGO_WORKSPACE} && \
			find src pkg -type d -exec ${INSTALL_DATA_DIR} \
				${MODGO_PACKAGE_PATH}/{} \; \
			    -o -type f -exec ${INSTALL_DATA} -p \
				${MODGO_WORKSPACE}/{} \
				${MODGO_PACKAGE_PATH}/{} \;

# This is required to force rebuilding of go libraries upon changes in
# toolchain.
RUN_DEPENDS +=		${MODGO_RUN_DEPENDS}
.endif

.if empty(CONFIGURE_STYLE)
MODGO_pre-configure +=	${MODGO_SETUP_WORKSPACE}


.  if !target(do-build)
do-build:
.    if empty(MODGO_MODNAME)
	cd ${WRKSRC} && \
		${MODGO_BUILD_TARGET}
.    else
	if [ -d ${WRKSRC}/cmd ]; then \
		cd ${WRKSRC} && \
			${MODGO_BUILD_CMD} ${ALL_TARGET}/cmd/... ; \
	else \
		cd ${WRKSRC} && \
			${MODGO_BUILD_CMD} ${ALL_TARGET} ; \
	fi;
.    endif
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
