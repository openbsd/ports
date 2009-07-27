# $OpenBSD: Makefile,v 1.1.1.1 2009/07/27 16:25:55 espie Exp $

COMMENT =	command line access to most of drupal
CATEGORIES = 	www www/drupal5 www/drupal6 devel
MASTER_SITES =	ftp://ftp.drupal.org/pub/drupal/files/projects/
MASTER_SITES0 =	http://download.pear.php.net/package/
HOMEPAGE =	http://drupal.org/
PKG_ARCH =	*
DISTNAME =	drush-All-Versions-2.0 
WRKDIST =	${WRKDIR}/drush
PKGNAME =	drush-2.0
DISTFILES =	${DISTNAME}.tar.gz Console_Table-1.1.3.tgz:0

PERMIT_DISTFILES_FTP = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_PACKAGE_CDROM = Yes

RUN_DEPENDS = 	:drupal-*:www/drupal6/core

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
