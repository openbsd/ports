# $OpenBSD: Makefile,v 1.1.1.1 2014/04/25 15:47:52 edd Exp $

COMMENT =		read–eval–print loop for PHP

V =			1.0.8
DISTNAME =		boris-$V
DISTFILES =		${DISTNAME}{v$V}${EXTRACT_SUFX}
WRKDIST =		${WRKDIR}/boris-$V

CATEGORIES =		devel

HOMEPAGE =		https://github.com/d11wtq/boris

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/d11wtq/boris/archive/

MODULES =		lang/php
RUN_DEPENDS +=		lang/php/${MODPHP_VERSION},-pcntl \
			php->=5.4.27p2,<5.5:lang/php/${MODPHP_VERSION}

NO_BUILD =		Yes
NO_TEST =		Yes

SUBST_VARS +=		MODPHP_BIN

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/boris ${PREFIX}/lib/boris
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,README.md} ${PREFIX}/share/doc/boris
	cp -r ${WRKSRC}/lib/* ${PREFIX}/lib/boris
	${SUBST_CMD} -c -m ${BINMODE} -o ${BINOWN} -g ${BINGRP} \
	    ${WRKSRC}/bin/boris ${PREFIX}/bin/boris

.include <bsd.port.mk>
