# $OpenBSD: Makefile,v 1.2 2015/04/05 13:31:14 sthen Exp $

ONLY_FOR_ARCHS =	${GO_ARCHS}

COMMENT =		access any command-line tool via a WebSocket

V =			0.2.10
VERSION =		$V
DISTNAME =		websocketd-$V
GH_ACCOUNT =		joewalnes
GH_PROJECT =		websocketd
GH_TAGNAME =		v$V

CATEGORIES =		net www

HOMEPAGE =		http://websocketd.com/

MAINTAINER =		Kent R. Spillner <kspillner@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread

BUILD_DEPENDS =		lang/go 					\
			net/go-websocket

NO_TEST =		Yes

GOPATH =		"${WRKSRC}:${LOCALBASE}/go"

post-extract:
	mkdir -p ${WRKSRC}/src/github.com/joewalnes
	ln -fhs ${WRKSRC} ${WRKSRC}/src/github.com/joewalnes/websocketd

do-build:
	GOPATH=${GOPATH} go build -o ${WRKDIST}/websocketd 		\
	    github.com/joewalnes/websocketd

do-install:
	${INSTALL_PROGRAM} -p ${WRKDIST}/websocketd ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/release/websocketd.man			\
	    ${PREFIX}/man/man8/websocketd.8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/websocketd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/websocketd/bash/
	${INSTALL_DATA} ${WRKSRC}/examples/bash/count.sh		\
	    ${PREFIX}/share/examples/websocketd/bash/count.sh
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/websocketd/cgi-bin/
	${INSTALL_DATA} ${WRKSRC}/examples/cgi-bin/README.txt		\
	    ${PREFIX}/share/examples/websocketd/cgi-bin/README.txt
	${INSTALL_DATA} ${WRKSRC}/examples/cgi-bin/dump-env.sh		\
	    ${PREFIX}/share/examples/websocketd/cgi-bin/dump-env.sh
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/websocketd/html/
	${INSTALL_DATA} ${WRKSRC}/examples/html/count.html		\
	    ${PREFIX}/share/examples/websocketd/html/count.html

.include <bsd.port.mk>
