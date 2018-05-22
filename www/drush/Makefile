# $OpenBSD: Makefile,v 1.12 2018/05/22 08:18:08 sthen Exp $

COMMENT =	command line access to most of Drupal

CATEGORIES =	www devel

V=		8.0.3
REVISION=	0
DISTNAME=	drush-$V
EXTRACT_SUFX=	-deps.tar.xz

HOMEPAGE=	http://www.drush.org/

# packaged from github/drush-ops/drush tag 8.0.3 plus dependencies
# fetched using "composer install" as of 20160227
MASTER_SITES=	https://spacehopper.org/mirrors/

MODULES=	lang/php

PERMIT_PACKAGE_CDROM= Yes

NO_BUILD=	Yes
RUN_DEPENDS=	archivers/gtar
SUBST_VARS=	MODPHP_BIN

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/drush
	cp -R ${WRKDIST}/* ${PREFIX}/libexec/drush
	rm ${PREFIX}/libexec/drush/drush
	rm ${PREFIX}/libexec/drush/drush.bat
	rm -r ${PREFIX}/libexec/drush/tests
	${SUBST_CMD} -m 555 -c ${FILESDIR}/drush ${PREFIX}/bin/drush
	find ${PREFIX}/libexec/drush -name '*.orig' -exec rm {} +
	find ${PREFIX}/libexec/drush -name '.git' -type d -exec rm -rf {} +

.include <bsd.port.mk>
