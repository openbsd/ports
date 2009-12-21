# $OpenBSD: Makefile,v 1.3 2009/12/21 09:38:23 espie Exp $

COMMENT =	backup mysql database directly from drupal

DISTNAME = 	backup_migrate-6.x-2.2
PKGNAME =	drupal6-backup-migrate-2.2


post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/files/backup_migrate
.include <bsd.port.mk>
