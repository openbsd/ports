# $OpenBSD: Makefile,v 1.1.1.1 2015/04/05 11:27:54 sthen Exp $

COMMENT =		go code coverage tool
DISTNAME =		gocover-1.4
CATEGORIES =		devel
HOMEPAGE =		http://golang.org/

MAINTAINER =		Adam Wolk <adam.wolk@koparo.com>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MASTER_SITES =		http://spacehopper.org/mirrors/
DISTFILES =		gotools-1.4${EXTRACT_SUFX}

EXTRACT_CASES =		gotools-1.4${EXTRACT_SUFX}) mkdir -p ${WRKSRC}; \
			tar -xzf ${FULLDISTDIR}/$$archive -C ${WRKSRC};;

BUILD_DEPENDS =		lang/go
RUN_DEPENDS =		lang/go

WRKSRC =		${WRKDIST}/src/golang.org/x/tools
GO_PKG =		pkg/tool/openbsd_${MACHINE_ARCH:S/i386/386/}

SUBST_VARS += 		GO_PKG

do-build:
	cd ${WRKSRC}/cmd/cover && GOPATH="${WRKDIST}" go build -v

do-test:
	cd ${WRKSRC}/cmd/cover && GOPATH="${WRKDIST}" go test -v

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/go/${GO_PKG}
	${INSTALL_PROGRAM} -p ${WRKSRC}/cmd/cover/cover \
		${PREFIX}/go/${GO_PKG}/cover

.include <bsd.port.mk>
