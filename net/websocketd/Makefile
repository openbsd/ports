# $OpenBSD: Makefile,v 1.6 2015/09/18 14:37:50 kspillner Exp $

COMMENT =		access any command-line tool via a WebSocket

V =			0.2.11
VERSION =		$V
DISTNAME =		websocketd-$V
GH_ACCOUNT =		joewalnes
GH_PROJECT =		websocketd
GH_TAGNAME =		v$V
REVISION =		0

CATEGORIES =		net www

HOMEPAGE =		http://websocketd.com/

MAINTAINER =		Kent R. Spillner <kspillner@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread

MODULES +=		lang/go

BUILD_DEPENDS =		net/go-websocket

NO_TEST =		Yes
SUBST_VARS =		VERSION

pre-build:
	@${SUBST_CMD} ${WRKSRC}/version.go

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

.include <bsd.port.mk>
