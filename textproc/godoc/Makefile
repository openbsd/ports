# $OpenBSD: Makefile,v 1.3 2015/05/15 07:32:00 jasper Exp $

COMMENT =		go documentation tool
V =			1.4
DISTNAME =		gotools-${V}
PKGNAME =		godoc-${V}
CATEGORIES =		textproc devel
HOMEPAGE =		http://golang.org/
REVISION =		1

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MASTER_SITES =		http://spacehopper.org/mirrors/

EXTRACT_CASES =		${DISTNAME}${EXTRACT_SUFX}) mkdir -p ${WRKSRC}; \
			tar -xzf ${FULLDISTDIR}/$$archive -C ${WRKSRC};;

MODULES =		lang/go

RUN_DEPENDS =		${MODGO_RUN_DEPENDS}

WRKSRC =		${WRKDIST}/src/golang.org/x/tools

do-build:
	cd ${WRKSRC}/cmd/godoc && GOPATH="${WRKDIST}" go build -v

do-test:
	cd ${WRKSRC}/cmd/godoc && GOPATH="${WRKDIST}" go test -v

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cmd/godoc/godoc ${PREFIX}/bin/godoc

.include <bsd.port.mk>
