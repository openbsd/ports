# $OpenBSD: Makefile,v 1.2 2015/05/15 07:32:00 jasper Exp $

COMMENT =		go code coverage tool
DISTNAME =		gocover-1.4
CATEGORIES =		devel
HOMEPAGE =		http://golang.org/
REVISION =		0

MAINTAINER =		Adam Wolk <adam.wolk@koparo.com>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MODULES =		lang/go

RUN_DEPENDS =		${MODGO_RUN_DEPENDS}

MASTER_SITES =		http://spacehopper.org/mirrors/
DISTFILES =		gotools-1.4${EXTRACT_SUFX}

EXTRACT_CASES =		gotools-1.4${EXTRACT_SUFX}) mkdir -p ${WRKSRC}; \
			tar -xzf ${FULLDISTDIR}/$$archive -C ${WRKSRC};;

WRKSRC =		${WRKDIST}/src/golang.org/x/tools

do-build:
	cd ${WRKSRC}/cmd/cover && GOPATH="${WRKDIST}" go build -v

do-test:
	cd ${WRKSRC}/cmd/cover && GOPATH="${WRKDIST}" go test -v

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/go/${GO_PKG}
	${INSTALL_PROGRAM} -p ${WRKSRC}/cmd/cover/cover \
		${PREFIX}/go/${GO_PKG}/cover

.include <bsd.port.mk>
