COMMENT =	command line tool for wordpress

V =		2.10.0
DISTNAME =	wp-cli-${V}
REVISION =	0

EXTRACT_ONLY =
EXTRACT_SUFX =	.phar

SITES =		https://github.com/wp-cli/wp-cli/releases/download/v${V}/

CATEGORIES =	www
HOMEPAGE =	https://wp-cli.org/

# MIT
PERMIT_PACKAGE = Yes

MODULES =	lang/php

NO_BUILD =	Yes

NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	cp ${FULLDISTDIR}/${DISTNAME}.phar ${PREFIX}/bin/wp-cli.phar
	${INSTALL_SCRIPT} ${FILESDIR}/wp ${PREFIX}/bin/wp
	${SUBST_CMD} ${PREFIX}/bin/wp

.include <bsd.port.mk>
