# $OpenBSD: Makefile,v 1.16 2019/09/26 21:59:30 sthen Exp $

COMMENT =		read-eval-print loop for PHP

GH_ACCOUNT =		d11wtq
GH_PROJECT =		boris
GH_TAGNAME =		v1.0.10
REVISION =		3

CATEGORIES =		devel

HOMEPAGE =		https://github.com/d11wtq/boris

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/php
RUN_DEPENDS +=		lang/php/${MODPHP_VERSION},-pcntl

NO_BUILD =		Yes
NO_TEST =		Yes

SUBST_VARS +=		MODPHP_BIN

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/boris ${PREFIX}/lib/boris
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,README.md} ${PREFIX}/share/doc/boris
	cp -r ${WRKSRC}/lib/* ${PREFIX}/lib/boris
	${SUBST_PROGRAM} ${WRKSRC}/bin/boris ${PREFIX}/bin/boris

.include <bsd.port.mk>
