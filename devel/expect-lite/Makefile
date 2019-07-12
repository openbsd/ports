# $OpenBSD: Makefile,v 1.3 2019/07/12 20:44:08 sthen Exp $

COMMENT =		mature, quick and easy command line automation tool

DISTNAME =		expect-lite_4.9.0
PKGNAME =		${DISTNAME:S/_/-/}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		http://expect-lite.sourceforge.net/

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=expect-lite/}

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		lang/expect \
			shells/bash

NO_BUILD =		Yes
NO_TEST =		Yes

WRKSRC =		${WRKDIR}/expect-lite.proj

DOC_DIR =		${PREFIX}/share/doc/expect-lite/
EXAMPLES_DIR =		${PREFIX}/share/examples/expect-lite/

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/expect-lite ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DOC_DIR} ${EXAMPLES_DIR}
	${INSTALL_DATA} ${WRKSRC}/bashrc ${EXAMPLES_DIR}
	cd ${WRKSRC}/examples && pax -rw . ${EXAMPLES_DIR}
	${INSTALL_DATA} ${WRKSRC}/{COPYING,README} ${DOC_DIR}
	cd ${WRKSRC}/Docs && pax -rw . ${DOC_DIR}
	gzip -d ${WRKSRC}/man/expect-lite.1.gz
	${INSTALL_MAN} ${WRKSRC}/man/expect-lite.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
