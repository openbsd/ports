COMMENT =	command line access to most of Drupal

CATEGORIES =	www devel

DISTNAME=	drush-8.4.11
REVISION=	0

HOMEPAGE=	https://www.drush.org/

# packaged from https://github.com/drush-ops/drush/tree/8.4.11
# plus dependencies fetched using "composer install" as of 20220826
MASTER_SITES=	https://spacehopper.org/mirrors/

MODULES=	lang/php

PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
RUN_DEPENDS=	archivers/gtar \
		${MODPHP_PDO_DEPENDS}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/drush
	cp -R ${WRKDIST}/* ${PREFIX}/libexec/drush
	cd ${PREFIX}/libexec/drush; \
	    rm drush includes/environment.inc${PATCHORIG}; \
	    rm -r ${PREFIX}/libexec/drush/tests
	${SUBST_CMD} -m 555 -c ${FILESDIR}/drush ${PREFIX}/bin/drush

.include <bsd.port.mk>
