# $OpenBSD: Makefile,v 1.9 2015/06/05 06:00:22 robert Exp $

COMMENT =	command line access to most of drupal
CATEGORIES = 	www www/drupal6 devel
MASTER_SITES =	ftp://ftp.drupal.org/pub/drupal/files/projects/
MASTER_SITES0 =	http://download.pear.php.net/package/
HOMEPAGE =	http://drupal.org/
PKG_ARCH =	*
DISTNAME =	drush-7.x-5.9
WRKDIST =	${WRKDIR}/drush
PKGNAME =	drush-5.9
DISTFILES =	${DISTNAME}.tar.gz Console_Table-1.1.3.tgz:0
MODULES =	lang/php
MODPHP_BUILDDEP ?=	No
REVISION =	1

PERMIT_PACKAGE_CDROM = Yes

RUN_DEPENDS = 	www/drupal6/core>=6

do-build:
	${SUBST_CMD} -c ${FILESDIR}/drush ${WRKBUILD}/drush
	cp ${WRKDIR}/Console_Table-1.1.3/Table.php ${WRKBUILD}/includes/table.inc

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/drush
	cp -R ${WRKDIST}/* ${PREFIX}/libexec/drush
	-rm ${PREFIX}/libexec/drush/drush
	-rm ${PREFIX}/libexec/drush/drush.bat
	${INSTALL_PROGRAM} ${WRKBUILD}/drush ${PREFIX}/bin

.include <bsd.port.mk>
