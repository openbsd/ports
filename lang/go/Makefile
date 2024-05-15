ONLY_FOR_ARCHS =	${GO_ARCHS}

BIN_BOOTSTRAP_GOARCHS =	386 amd64 arm arm64 mips64 riscv64
BIN_BOOTSTRAP_VERSION = 1.20.4

COMMENT =		Go programming language

# increment _MODGO_SYSTEM_VERSION in go.port.mk after updating to a new
# version, to trigger updates of go-compiled ports
VERSION =		1.22.3
DISTNAME =		go${VERSION}.src
PKGNAME =		go-${VERSION}
PKGSPEC =		${FULLPKGNAME:S/go-/go-=/}

CATEGORIES =		lang

HOMEPAGE =		https://golang.org/

MAINTAINER =		Joel Sing <jsing@openbsd.org>

# software: BSD, documentation: CC-BY-3.0
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

SITES =			https://golang.org/dl/
SITES.bootstrap =	https://download.exigere.com.au/pub/go/

BUILD_DEPENDS =		shells/bash

SEPARATE_BUILD =	Yes
SUBST_VARS =		GOCFG

PSEUDO_FLAVORS =	native_bootstrap
FLAVOR ?=

WRKDIST =		${WRKDIR}/go
WRKSRC =		${WRKDIST}/src

INSTALL_STRIP =

GOOS =			openbsd
GOARCH =		unknown
GOROOT =		${PREFIX}/go
GOROOT_BOOTSTRAP =

# sync with go.port.mk
.if ${MACHINE_ARCH} == "amd64"
GOARCH =		amd64
.elif ${MACHINE_ARCH} == "arm"
GOARCH =		arm
.elif ${MACHINE_ARCH} == "aarch64"
GOARCH =		arm64
.elif ${MACHINE_ARCH} == "i386"
GOARCH =		386
.elif ${MACHINE_ARCH} == "mips64"
GOARCH =		mips64
.elif ${MACHINE_ARCH} == "riscv64"
GOARCH =		riscv64
.endif

MAKE_ENV +=		TMPDIR="${WRKBUILD}"

# We cannot assume that the machine running the built code will have SSE,
# even though the machine building the package has SSE. As such, we need
# to explicitly disable SSE on i386 builds.
MAKE_ENV +=		GO386=softfloat

.for arch in ${BIN_BOOTSTRAP_GOARCHS}
SUPDISTFILES.bootstrap += go-openbsd-${arch}-bootstrap-${BIN_BOOTSTRAP_VERSION}${EXTRACT_SUFX}

.if ${GOARCH} == ${arch} && !${FLAVOR:Mnative_bootstrap}
DISTFILES.bootstrap +=	go-openbsd-${GOARCH}-bootstrap-${BIN_BOOTSTRAP_VERSION}${EXTRACT_SUFX}
GOROOT_BOOTSTRAP =	${WRKDIR}/go-openbsd-${GOARCH}-bootstrap
.endif
.endfor

.if ${FLAVOR:Mnative_bootstrap}
GOROOT_BOOTSTRAP =	${LOCALBASE}/go
INSTALLED != (pkg_info -qe "go-*" && echo yes) || echo no
.  if ${INSTALLED:L} != "yes"
ERRORS += "Fatal: This flavor requires an installed go package"
.  endif
.endif

GOCFG =			/${GOOS}_${GOARCH}
GOTOOLS =		pkg/tool/${GOCFG}

do-configure:
.	if ${GOARCH} == "unknown"
		@echo "Unable to determine GOARCH for ${MACHINE_ARCH}."
		@exit 1
.	endif
.	if empty(GOROOT_BOOTSTRAP)
		@echo "No bootstrap available for ${MACHINE_ARCH}."
		@exit 1
.	endif

do-build:
	@cd ${WRKSRC} && \
		ulimit -S -d $$(ulimit -H -d) && \
		${SETENV} ${MAKE_ENV} \
		CC="${CC}" \
		CXX="${CXX}" \
		GOROOT=${WRKDIST} \
		GOBIN=${WRKDIST}/bin \
		GOCACHE=${WRKDIST}/go-cache \
		GOROOT_FINAL=${GOROOT} \
		GOROOT_BOOTSTRAP=${GOROOT_BOOTSTRAP} \
		    ./make.bash --no-banner

# The regress framework leaks fd 3 and 4 into this execution,
# which breaks Go's (now rather fragile) os/exec tests.
do-test:
	@cd ${WRKSRC} && \
		ulimit -S -d $$(ulimit -H -d) -n 256 && \
		${SETENV} ${MAKE_ENV} \
		CC="${CC}" \
		CXX="${CXX}" \
		GOCACHE=${WRKDIST}/go-cache \
		GOPATH=${WRKDIR} \
		GO_TEST_TIMEOUT_SCALE=3 \
		HOME=${WRKDIR} \
		PATH=${WRKDIST}/bin:${PATH} \
		    /bin/ksh -c "exec 3>&-; exec 4>&-; ./run.bash"

do-install:
	${INSTALL_PROGRAM_DIR} ${GOROOT}/bin

	find ${WRKDIST} -maxdepth 1 -type f \
		-exec ${INSTALL_DATA} -p {} ${GOROOT} \;

	cd ${WRKDIST} && \
		pax -rw -s '/^.*\.orig\.port$$//' api doc lib misc src pkg/include \
			test ${GOROOT}
	find ${GOROOT} -type d -exec chmod ${DIRMODE} {} +
	find ${GOROOT} -type f -exec chmod ${SHAREMODE} {} +

.	for prog in go gofmt
		${INSTALL_PROGRAM} -p ${WRKDIST}/bin/${prog} ${GOROOT}/bin
		@ln -s ../go/bin/${prog} ${PREFIX}/bin/${prog}
.	endfor

	${INSTALL_PROGRAM_DIR} ${GOROOT}/${GOTOOLS}
	${INSTALL_PROGRAM} -p ${WRKDIST}/${GOTOOLS}/* ${GOROOT}/${GOTOOLS}

bootstrap: clean patch
.if !${FLAVOR:Mnative_bootstrap}
	@echo "bootstrap requires FLAVOR=native_bootstrap"
	@exit 1
.endif
.	for arch in ${BIN_BOOTSTRAP_GOARCHS}
		@echo "Building binary bootstrap for openbsd/${arch}..."
		@cd ${WRKSRC} && \
			${SETENV} ${MAKE_ENV} \
			CGO_ENABLED=0 \
			GOCACHE=${WRKDIST}/go-cache \
			GOOS=openbsd GOARCH="${arch}" GOARM=7 \
			${_PBUILD} ./bootstrap.bash
		@echo "Repacking archive..."; \
			BOOTSTRAPTBZ="${WRKDIR}/go-openbsd-${arch}-bootstrap.tbz"; \
			BOOTSTRAPTGZ="${WRKDIR}/go-openbsd-${arch}-bootstrap-${VERSION}.tar.gz"; \
			bzcat $${BOOTSTRAPTBZ} \
				| ${_PBUILD} gzip -o $${BOOTSTRAPTGZ} && \
			ls -l $${BOOTSTRAPTGZ}
.	endfor

.include <bsd.port.mk>
