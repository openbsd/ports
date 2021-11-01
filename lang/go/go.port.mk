# $OpenBSD: go.port.mk,v 1.48 2021/11/01 07:25:42 landry Exp $

ONLY_FOR_ARCHS ?=	${GO_ARCHS}

MODGO_BUILDDEP ?=	Yes

MODGO_DIST_SUBDIR ?=	go_modules

MASTER_SITE_ATHENS =	https://proxy.golang.org/

MODGO_MASTER_SITESN =	9
MASTER_SITES${MODGO_MASTER_SITESN} ?= ${MASTER_SITE_ATHENS}

MODGO_RUN_DEPENDS =	lang/go
MODGO_BUILD_DEPENDS =	lang/go

.for l in a b c d e f g h i j k l m n o p q r s t u v w x y z
_subst := ${_subst}:S/${l:U}/!$l/g
.endfor

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
MAKE_ENV +=		GO386=softfloat
MAKE_ENV +=		GOCACHE="${MODGO_GOCACHE}"
MAKE_ENV +=		TMPDIR="${WRKBUILD}"

MODGO_CMD ?=		${SETENV} ${MAKE_ENV} go
MODGO_BUILD_CMD =	${MODGO_CMD} install ${MODGO_FLAGS}
MODGO_LIST_CMD =	${MODGO_CMD} list ${MODGO_FLAGS}
MODGO_TEST_CMD =	${MODGO_CMD} test ${MODGO_FLAGS} ${MODGO_TEST_FLAGS}
MODGO_BINDIR ?=		bin

.if ! empty(MODGO_LDFLAGS)
MODGO_BUILD_CMD +=	-ldflags="${MODGO_LDFLAGS}"
MODGO_LIST_CMD +=	-ldflags="${MODGO_LDFLAGS}"
MODGO_TEST_CMD +=	-ldflags="${MODGO_LDFLAGS}"
.endif

.if defined(MODGO_MODNAME)
.  for _s in ${_subst}
MODGO_MODNAME_ESC =	${MODGO_MODNAME${_s}}
DISTNAME_ESC =		${DISTNAME${_s}}
.  endfor

EXTRACT_SUFX ?=		.zip
PKGNAME ?=		${DISTNAME:S/-v/-/}
ALL_TARGET ?=		${MODGO_MODNAME}
MODGO_FLAGS +=		-modcacherw -trimpath
DISTFILES +=		${DISTNAME_ESC}${EXTRACT_SUFX}{${MODGO_VERSION}${EXTRACT_SUFX}}
EXTRACT_ONLY =		${DISTNAME_ESC}${EXTRACT_SUFX}
MASTER_SITES ?=		${MASTER_SITE_ATHENS}${MODGO_MODNAME_ESC}/@v/
.  for _modpath _modver in ${MODGO_MODULES}
DISTFILES +=	${MODGO_DIST_SUBDIR}/${_modpath}/@v/${_modver}.zip{${_modpath}/@v/${_modver}.zip}:${MODGO_MASTER_SITESN}
_MODGO_SETUP_ZIP +=	${_modpath}/@v/${_modver}
.  endfor
.  for _modpath _modver in ${MODGO_MODFILES} ${MODGO_MODULES}
DISTFILES +=	${MODGO_DIST_SUBDIR}/${_modpath}/@v/${_modver}.mod{${_modpath}/@v/${_modver}.mod}:${MODGO_MASTER_SITESN}
_MODGO_SETUP_MOD +=	${_modpath}/@v/${_modver}
.  endfor
MAKE_ENV +=		GOPROXY=file://${WRKDIR}/go_modules
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
MODGO_SETUP_WORKSPACE =	ln -sf ${WRKSRC} ${WRKDIR}/${MODGO_MODNAME}; \
	for m in ${_MODGO_SETUP_ZIP}; do \
	    ${INSTALL} -D ${DISTDIR}/${MODGO_DIST_SUBDIR}/$$m.zip ${WRKDIR}/${MODGO_DIST_SUBDIR}/$$m.zip; \
	done; \
	for m in ${_MODGO_SETUP_MOD}; do \
	    ${INSTALL} -D ${DISTDIR}/${MODGO_DIST_SUBDIR}/$$m.mod ${WRKDIR}/${MODGO_DIST_SUBDIR}/$$m.mod; \
	done
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
	cd ${WRKSRC} && \
		${MODGO_LIST_CMD} -f '{{.Name}}' ${ALL_TARGET} 2>/dev/null \
			| grep -qe '^main$$' && \
		${MODGO_BUILD_CMD} ${ALL_TARGET} ; \
	if [ -d ${WRKSRC}/cmd ]; then \
		cd ${WRKSRC} && \
			${MODGO_BUILD_CMD} ./cmd/... ; \
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

# modgo-gen-modules will output MODGO_MODULES and MODGO_MODFILES for
# the latest version of a given MODGO_MODNAME if MODGO_VERSION is set to
# "latest". Otherwise it will fetch the MODULES/MODFILES for the presently
# set MODGO_VERSION.
modgo-gen-modules:
.if empty(MODGO_MODNAME)
	@${ECHO_MSG} "No MODGO_MODNAME set"
	@exit 1
.endif

	@printf '# $$%s$$\n\n' OpenBSD
.if empty(MODGO_VERSION) || ${MODGO_VERSION} == "latest"
	@${_PERLSCRIPT}/modgo-gen-modules-helper ${MODGO_MODNAME}
.else
	@${_PERLSCRIPT}/modgo-gen-modules-helper ${MODGO_MODNAME} ${MODGO_VERSION}
.endif
