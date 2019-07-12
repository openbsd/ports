# $OpenBSD: Makefile,v 1.10 2019/07/12 20:48:51 sthen Exp $

COMMENT =		access any command-line tool via a WebSocket

GH_ACCOUNT =		joewalnes
GH_PROJECT =		websocketd
GH_TAGNAME =		v0.2.12
REVISION=		1

CATEGORIES =		net www

HOMEPAGE =		http://websocketd.com/

MAINTAINER =		Kent R. Spillner <kspillner@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MODULES +=		lang/go

BUILD_DEPENDS =		net/go-net

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
