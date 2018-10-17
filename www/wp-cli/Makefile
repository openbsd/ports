# $OpenBSD: Makefile,v 1.4 2018/10/17 14:15:56 sthen Exp $

COMMENT =	command line tool for wordpress

V =            1.5.1
DISTNAME =     wp-cli-${V}
REVISION =     0

EXTRACT_ONLY =
EXTRACT_SUFX =	.phar

MASTER_SITES = https://github.com/wp-cli/wp-cli/releases/download/v${V}/

CATEGORIES =	www
HOMEPAGE =	http://wp-cli.org/

# MIT
PERMIT_PACKAGE_CDROM =   Yes

MODULES =	lang/php
RUN_DEPENDS =	lang/php/${MODPHP_VERSION}

NO_BUILD =	Yes

SUBST_VARS +=	MODPHP_BIN

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	cp ${FULLDISTDIR}/${DISTNAME}.phar ${PREFIX}/bin/wp-cli.phar
	${INSTALL_SCRIPT} ${FILESDIR}/wp ${PREFIX}/bin/wp
	${SUBST_CMD} ${PREFIX}/bin/wp

.include <bsd.port.mk>
