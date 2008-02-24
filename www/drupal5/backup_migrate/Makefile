# $OpenBSD: Makefile,v 1.3 2008/02/24 15:48:25 espie Exp $

COMMENT =	backup mysql database directly from drupal

DISTNAME = 	backup_migrate-5.x-1.x-dev
PKGNAME =	drupal5-backup-migrate-1p1


post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/files/backup_migrate
.include <bsd.port.mk>
