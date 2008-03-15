# $OpenBSD: Makefile,v 1.4 2008/03/15 07:28:01 espie Exp $

COMMENT =	backup mysql database directly from drupal

DISTNAME = 	backup_migrate-5.x-1.0
PKGNAME =	drupal5-backup-migrate-1.0


post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/files/backup_migrate
.include <bsd.port.mk>
