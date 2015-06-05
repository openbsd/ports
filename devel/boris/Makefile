# $OpenBSD: Makefile,v 1.10 2015/06/05 06:00:21 robert Exp $

COMMENT =		read-eval-print loop for PHP

V =			1.0.8
REVISION =		3

GH_ACCOUNT =		d11wtq
GH_PROJECT =		boris
GH_TAGNAME =		v$V

DISTNAME =		${GH_PROJECT}-$V

CATEGORIES =		devel

HOMEPAGE =		https://github.com/d11wtq/boris

# MIT
PERMIT_PACKAGE_CDROM =	Yes

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
