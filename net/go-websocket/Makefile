# $OpenBSD: Makefile,v 1.2 2015/05/15 07:32:00 jasper Exp $

COMMENT =		golang websocket package

VERSION =		0.0
DISTNAME =		go-websocket-${VERSION}
GH_COMMIT =		97d8e4e174133a4d1d2171380e510eb4dea8f5ea
GH_ACCOUNT =		golang
GH_PROJECT =		net
REVISION =		0

CATEGORIES =		net www

HOMEPAGE =		http://golang.org/x/net/websocket/

MAINTAINER =		Kent R. Spillner <kspillner@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread

MODULES =		lang/go

GO_PKG =		pkg/openbsd_${MACHINE_ARCH:S/i386/386/}

post-extract:
	mkdir -p ${WRKSRC}/src/golang.org/x/net
	mv ${WRKSRC}/websocket ${WRKSRC}/src/golang.org/x/net/

do-build:
	GOPATH=${GOPATH} go install golang.org/x/net/websocket

do-test:
	GOPATH=${GOPATH} go test golang.org/x/net/websocket

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/go/${GO_PKG}/golang.org/x/net
	${INSTALL_DATA} -p						\
	    ${WRKDIST}/${GO_PKG}/golang.org/x/net/websocket.a		\
	    ${PREFIX}/go/${GO_PKG}/golang.org/x/net/
	${INSTALL_DATA_DIR} ${PREFIX}/go/src/golang.org/x/net/websocket
	${INSTALL_DATA} -p						\
	    ${WRKDIST}/src/golang.org/x/net/websocket/websocket.go	\
	    ${PREFIX}/go/src/golang.org/x/net/websocket/

.include <bsd.port.mk>
