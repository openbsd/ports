# $OpenBSD: Makefile,v 1.2 2008/02/19 10:43:28 espie Exp $

COMMENT =	backup mysql database directly from drupal

DISTNAME = 	backup_migrate-5.x-1.x-dev
PKGNAME =	drupal5-backup-migrate-1p0


post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/files/backup_migrate
.include <bsd.port.mk>
