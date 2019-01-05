# $OpenBSD: Makefile,v 1.57 2019/01/05 12:59:25 jsing Exp $

ONLY_FOR_ARCHS =	${GO_ARCHS}

COMMENT =		Go programming language

VERSION =		1.11.4
REVISION =		0
EXTRACT_SUFX =		.src.tar.gz
DISTNAME =		go${VERSION}
PKGNAME =		go-${VERSION}
PKGSPEC =		go-=${VERSION}

CATEGORIES =		lang

HOMEPAGE =		https://golang.org/

MAINTAINER =		Joel Sing <jsing@openbsd.org>

# software: BSD, documentation: CC-BY-3.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread

MASTER_SITES =		https://golang.org/dl/

BUILD_DEPENDS =		lang/go-bootstrap \
			shells/bash

SEPARATE_BUILD =	simple
CONFIGURE_STYLE =	None
SUBST_VARS =		GOCFG

WRKDIST =		${WRKDIR}/go
WRKSRC =		${WRKDIST}/src

INSTALL_STRIP =

GOOS =			openbsd
GOARCH =		unknown
GOROOT =		${PREFIX}/go
GOROOT_BOOTSTRAP =	${GOROOT}/bootstrap

.if ${MACHINE_ARCH} == "amd64"
GOARCH =		amd64
.elif ${MACHINE_ARCH} == "i386"
GOARCH =		386
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
		CC="${CC}" \
		CXX="${CXX}" \
		GOROOT=${WRKDIST} \
		GOBIN=${WRKDIST}/bin \
		GOROOT_FINAL=${GOROOT} \
		GOROOT_BOOTSTRAP=${GOROOT_BOOTSTRAP} \
		    ./make.bash --no-banner

# The regress framework leaks fd 3 and 4 into this execution,
# which breaks Go's (now rather fragile) os/exec tests.
do-test:
	@cd ${WRKSRC} && \
		ulimit -n 256 -d 2097152 && \
		CC="${CC}" \
		CXX="${CXX}" \
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
