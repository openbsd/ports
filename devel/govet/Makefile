# $OpenBSD: Makefile,v 1.1.1.1 2015/06/02 11:34:15 bmercer Exp $

COMMENT =		reports suspicious constructs in go code
DISTNAME =		govet-1.4
CATEGORIES =		devel
HOMEPAGE =		http://golang.org/
REVISION =		0

MAINTAINER =		Adam Wolk <adam.wolk@tintagel.pl>

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
	cd ${WRKSRC}/cmd/vet && GOPATH="${WRKDIST}" go build -v

# Requires http://golang.org/test/errchk which is not present
# in lang/go or the download for this package
NO_TEST =		yes
#do-test:
#	cd ${WRKSRC}/cmd/vet && GOPATH="${WRKDIST}" go test -v

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/go/${GO_PKG}
	${INSTALL_PROGRAM} -p ${WRKSRC}/cmd/vet/vet \
		${PREFIX}/go/${GO_PKG}/vet

.include <bsd.port.mk>
