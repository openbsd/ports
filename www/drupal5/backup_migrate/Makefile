# $OpenBSD: Makefile,v 1.1.1.1 2008/02/16 16:46:59 espie Exp $

COMMENT =	backup database directly from drupal

DISTNAME = 	backup_migrate-5.x-1.x-dev
PKGNAME =	drupal5-backup-migrate-1


post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/files/backup_migrate
.include <bsd.port.mk>
