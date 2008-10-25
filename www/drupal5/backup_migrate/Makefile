# $OpenBSD: Makefile,v 1.5 2008/10/25 17:58:23 espie Exp $

COMMENT =	backup mysql database directly from drupal

DISTNAME = 	backup_migrate-5.x-1.1
PKGNAME =	drupal5-backup-migrate-1.1


post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/files/backup_migrate
.include <bsd.port.mk>
