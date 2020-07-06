# $OpenBSD: Makefile,v 1.19 2020/07/06 11:17:46 sthen Exp $

COMMENT =	command line access to most of Drupal

CATEGORIES =	www devel

DISTNAME=	drush-8.3.5

HOMEPAGE=	https://www.drush.org/

# packaged from https://github.com/drush-ops/drush/tree/8.3.5
# plus dependencies fetched using "composer install" as of 20200615
MASTER_SITES=	https://spacehopper.org/mirrors/

MODULES=	lang/php

PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
RUN_DEPENDS=	archivers/gtar \
		${MODPHP_PDO_DEPENDS}
SUBST_VARS=	MODPHP_BIN

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/drush
	cp -R ${WRKDIST}/* ${PREFIX}/libexec/drush
	cd ${PREFIX}/libexec/drush; \
	    rm drush includes/environment.inc.orig; \
	    rm -r ${PREFIX}/libexec/drush/tests
	${SUBST_CMD} -m 555 -c ${FILESDIR}/drush ${PREFIX}/bin/drush

.include <bsd.port.mk>
