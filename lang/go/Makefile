# $OpenBSD: Makefile,v 1.33 2016/05/16 13:50:01 jsing Exp $

ONLY_FOR_ARCHS =	${GO_ARCHS}

COMMENT =		Go programming language

VERSION =		1.6
EXTRACT_SUFX =		.src.tar.gz
DISTNAME = 		go${VERSION}
PKGNAME = 		go-${VERSION}
REVISION =		2
CATEGORIES =		lang

HOMEPAGE =		https://golang.org/

MAINTAINER = 		Joel Sing <jsing@openbsd.org>

# software: BSD, documentation: CC-BY-3.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pthread

MASTER_SITES =		https://golang.org/dl/

BUILD_DEPENDS =		lang/go-bootstrap shells/bash

SEPARATE_BUILD =	simple
CONFIGURE_STYLE =	None
SUBST_VARS =		GOCFG

WRKDIST =		${WRKDIR}/go
WRKSRC =		${WRKDIST}/src

INSTALL_STRIP =

GOOS = 			openbsd
GOARCH =		unknown
GOROOT = 		${PREFIX}/go
GOROOT_BOOTSTRAP =	${PREFIX}/go/bootstrap

.if ${MACHINE_ARCH} == "amd64"
GOARCH =		amd64
.elif ${MACHINE_ARCH} == "i386"
GOARCH =		386
.endif

GOCFG =			/${GOOS}_${GOARCH}

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
		GOROOT_BOOTSTRAP=${GOROOT_BOOTSTRAP} ./make.bash --no-banner

do-test:
	@cd ${WRKSRC} && \
		ulimit -n 256 -d 2097152 && \
		PATH=${WRKDIST}/bin:${PATH} GOROOT=${WRKDIST} ./run.bash

do-install:
	${INSTALL_PROGRAM_DIR} ${GOROOT}

	${INSTALL_PROGRAM_DIR} ${GOROOT}/bin
	${INSTALL_PROGRAM} -p ${WRKDIST}/bin/go{,fmt} ${GOROOT}/bin

	@cd ${PREFIX}/bin && \
		ln -s ../go/bin/go go
	@cd ${PREFIX}/bin && \
		ln -s ../go/bin/gofmt gofmt

	@cd ${WRKDIST} && \
		find . -type f -maxdepth 1 \
			-exec ${INSTALL_DATA} -p {} \
			${GOROOT} \;

.	for dir in api doc lib misc src pkg/include pkg/obj pkg/${GOCFG} test
		@cd ${WRKDIST} && \
			find ${dir} -type d \
				-exec ${INSTALL_DATA_DIR} \
				${GOROOT}/{} \;
		@cd ${WRKDIST} && \
			find ${dir} ! -name \*.orig -type f \
				-exec ${INSTALL_DATA} -p {} \
				${GOROOT}/{} \;
.	endfor

	${INSTALL_PROGRAM_DIR} ${GOROOT}/pkg/tool/${GOOS}_${GOARCH}
	${INSTALL_PROGRAM} -p ${WRKDIST}/pkg/tool/${GOOS}_${GOARCH}/* \
		${GOROOT}/pkg/tool/${GOOS}_${GOARCH}

.include <bsd.port.mk>
