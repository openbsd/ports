# $OpenBSD: Makefile,v 1.4 2014/07/10 14:13:16 jasper Exp $

COMMENT =		read-eval-print loop for PHP

V =			1.0.8
REVISION =		0

GH_ACCOUNT =		d11wtq
GH_PROJECT =		boris
GH_TAGNAME =		v$V
GH_COMMIT =		125dd4e5752639af7678a22ea597115646d89c6e

DISTNAME =		${GH_PROJECT}-$V

CATEGORIES =		devel

HOMEPAGE =		https://github.com/d11wtq/boris

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/php
RUN_DEPENDS +=		lang/php/${MODPHP_VERSION},-pcntl \
			php->=5.4.27p2,<5.5:lang/php/${MODPHP_VERSION}

NO_BUILD =		Yes
NO_TEST =		Yes

SUBST_VARS +=		MODPHP_BIN

WRKDIST =		${WRKDIR}/boris-${V}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/boris ${PREFIX}/lib/boris
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,README.md} ${PREFIX}/share/doc/boris
	cp -r ${WRKSRC}/lib/* ${PREFIX}/lib/boris
	${SUBST_CMD} -c -m ${BINMODE} -o ${BINOWN} -g ${BINGRP} \
	    ${WRKSRC}/bin/boris ${PREFIX}/bin/boris

.include <bsd.port.mk>
