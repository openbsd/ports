# $OpenBSD: Makefile,v 1.1.1.1 2009/04/03 14:07:58 espie Exp $

COMMENT =	backup mysql database directly from drupal

DISTNAME = 	backup_migrate-6.x-1.2
PKGNAME =	drupal6-backup-migrate-1.2


post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/files/backup_migrate
.include <bsd.port.mk>
