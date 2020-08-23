# $OpenBSD: Makefile,v 1.11 2020/08/23 02:59:00 abieber Exp $

COMMENT =		access any command-line tool via a WebSocket

MODGO_MODNAME =		github.com/joewalnes/websocketd
MODGO_VERSION =		v0.3.1

DISTNAME =		websocketd-${MODGO_VERSION}
PKGNAME =		websocketd-0.3.1

CATEGORIES =		net www

HOMEPAGE =		http://websocketd.com/

MAINTAINER =		Kent R. Spillner <kspillner@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MODULES +=		lang/go
MODGO_LDFLAGS +=	-X main.version=${MODGO_VERSION}

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${MODGO_MODNAME}@${MODGO_VERSION}

post-install:
	${INSTALL_MAN} ${WRKSRC}/release/websocketd.man			\
	    ${PREFIX}/man/man8/websocketd.8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/websocketd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/websocketd/bash/
	${INSTALL_DATA} ${WRKSRC}/examples/bash/count.sh		\
	    ${PREFIX}/share/examples/websocketd/bash/count.sh
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/websocketd/cgi-bin/
	${SUBST_CMD} -c -m 755 ${WRKSRC}/examples/cgi-bin/README.txt		\
	    ${PREFIX}/share/examples/websocketd/cgi-bin/README.txt
	${INSTALL_SCRIPT} ${WRKSRC}/examples/cgi-bin/dump-env.sh		\
	    ${PREFIX}/share/examples/websocketd/cgi-bin/dump-env.sh
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/websocketd/html/
	${INSTALL_DATA} ${WRKSRC}/examples/html/count.html		\
	    ${PREFIX}/share/examples/websocketd/html/count.html

MODGO_MODULES =	\
	github.com/gorilla/websocket	 v1.4.0

.include <bsd.port.mk>
