# $OpenBSD: Makefile,v 1.3 2016/05/11 15:53:26 jsing Exp $

ONLY_FOR_ARCHS =	${GO_ARCHS}

COMMENT =		Go programming language

VERSION =		1.4.3
EXTRACT_SUFX =		.src.tar.gz
DISTNAME = 		go${VERSION}
PKGNAME = 		go-bootstrap-${VERSION}
REVISION =		1
CATEGORIES =		lang

HOMEPAGE =		https://golang.org/

MAINTAINER = 		Joel Sing <jsing@openbsd.org>

# software: BSD, documentation: CC-BY-3.0
PERMIT_PACKAGE_CDROM =	bootstrap only
PERMIT_PACKAGE_FTP =	bootstrap only
PERMIT_DISTFILES_FTP =  bootstrap only

WANTLIB =		c m pthread

MASTER_SITES =		https://golang.org/dl/

BUILD_DEPENDS =		shells/bash

SEPARATE_BUILD =	simple
CONFIGURE_STYLE =	None
SUBST_VARS =		GOEXE GOCFG

WRKDIST =		${WRKDIR}/go
WRKSRC =		${WRKDIST}/src

INSTALL_STRIP =

GOOS = 			openbsd
GOARCH =		unknown
GOROOT = 		${PREFIX}/go/bootstrap

.if ${MACHINE_ARCH} == "amd64"
GOARCH =		amd64
EXEPREFIX =		6
PKG_ARGS +=		-Damd64=1
PKG_ARGS +=		-Di386=0
.elif ${MACHINE_ARCH} == "i386"
GOARCH =		386
EXEPREFIX =		8
PKG_ARGS +=		-Damd64=0
PKG_ARGS +=		-Di386=1
.else
PKG_ARGS += 		-Damd64=0 -Di386=0
.endif

GOCFG =			/${GOOS}_${GOARCH}
GOEXE =			${GOCFG}/${EXEPREFIX}

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
		GOROOT_FINAL=${GOROOT} ./make.bash --no-banner

do-test:
	@cd ${WRKSRC} && \
		ulimit -n 256 -d 2097152 && \
		PATH=${WRKDIST}/bin:${PATH} GOROOT=${WRKDIST} ./run.bash

do-install:
	${INSTALL_PROGRAM_DIR} ${GOROOT}

	${INSTALL_PROGRAM_DIR} ${GOROOT}/bin
	${INSTALL_PROGRAM} -p ${WRKDIST}/bin/go{,fmt} ${GOROOT}/bin

	@cd ${WRKDIST} && \
		find . ! -name .hg\* -type f -maxdepth 1 \
			-exec ${INSTALL_DATA} -p {} \
			${GOROOT} \;

.	for dir in doc include lib misc src pkg
		@cd ${WRKDIST} && \
			find ${dir} -type d \
				-exec ${INSTALL_DATA_DIR} \
				${GOROOT}/{} \;
		@cd ${WRKDIST} && \
			find ${dir} ! -name \*.orig -type f \
				-exec ${INSTALL_DATA} -p {} \
				${GOROOT}/{} \;
.	endfor

	# These get installed via `find' however we need them to be executable
	${INSTALL_PROGRAM_DIR} ${GOROOT}/pkg/tool/${GOOS}_${GOARCH}
	${INSTALL_PROGRAM} -p ${WRKDIST}/pkg/tool/${GOOS}_${GOARCH}/* \
		${GOROOT}/pkg/tool/${GOOS}_${GOARCH}

.include <bsd.port.mk>
