# $OpenBSD: Makefile,v 1.86 2020/03/20 09:04:07 jsing Exp $

ONLY_FOR_ARCHS =	${GO_ARCHS}

BIN_BOOTSTRAP_GOARCHS =	arm arm64
BIN_BOOTSTRAP_VERSION = 1.13.7

COMMENT =		Go programming language

VERSION =		1.13.9
DISTNAME =		go${VERSION}.src
PKGNAME =		go-${VERSION}
PKGSPEC =		${FULLPKGNAME:S/go-/go-=/}

CATEGORIES =		lang

HOMEPAGE =		https://golang.org/

MAINTAINER =		Joel Sing <jsing@openbsd.org>

# software: BSD, documentation: CC-BY-3.0
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MASTER_SITES =		https://golang.org/dl/
MASTER_SITES0 =		https://download.exigere.com.au/pub/go/

DISTFILES =		${DISTNAME}${EXTRACT_SUFX}

BUILD_DEPENDS =		shells/bash

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	None
SUBST_VARS =		GOCFG

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
.endif

# We cannot assume that the maching running the built code will have SSE,
# even though the machine building the package has SSE. As such, we need
# to explicitly disable SSE on i386 builds.
MAKE_ENV +=		GO386=387

.for arch in ${BIN_BOOTSTRAP_GOARCHS}
SUPDISTFILES +=		go-openbsd-${arch}-bootstrap-${BIN_BOOTSTRAP_VERSION}${EXTRACT_SUFX}:0

.if ${GOARCH} == ${arch}
DISTFILES +=		go-openbsd-${GOARCH}-bootstrap-${BIN_BOOTSTRAP_VERSION}${EXTRACT_SUFX}:0
GOROOT_BOOTSTRAP =	${WRKDIR}/go-openbsd-${GOARCH}-bootstrap
.endif
.endfor

.if empty(GOROOT_BOOTSTRAP)
BUILD_DEPENDS +=	lang/go-bootstrap
GOROOT_BOOTSTRAP =	${GOROOT}/bootstrap
.endif

GOCFG =			/${GOOS}_${GOARCH}
GOTOOLS =		pkg/tool/${GOCFG}

do-configure:
.	if ${GOARCH} == "unknown"
		@echo "Unable to determine GOARCH for ${MACHINE_ARCH}."
		@exit 1
.	endif

do-build:
	@cd ${WRKSRC} && \
		ulimit -d $$(ulimit -H -d) && \
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
		ulimit -d $$(ulimit -H -d) -n 256 && \
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

.	for prog in go gofmt
		${INSTALL_PROGRAM} -p ${WRKDIST}/bin/${prog} ${GOROOT}/bin
		@ln -s ../go/bin/${prog} ${PREFIX}/bin/${prog}
.	endfor

	find ${WRKDIST} -maxdepth 1 -type f \
		-exec ${INSTALL_DATA} -p {} ${GOROOT} \;

.	for dir in api doc lib misc src pkg/include pkg/${GOCFG} test
		cd ${WRKDIST} && \
			find ${dir} -type d \
				-exec ${INSTALL_DATA_DIR} ${GOROOT}/{} \; \
			    -o -type f ! -name \*.orig \
				-exec ${INSTALL_DATA} -p {} ${GOROOT}/{} \;
.	endfor

	${INSTALL_PROGRAM_DIR} ${GOROOT}/${GOTOOLS}
	${INSTALL_PROGRAM} -p ${WRKDIST}/${GOTOOLS}/* ${GOROOT}/${GOTOOLS}

.include <bsd.port.mk>
