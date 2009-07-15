# $OpenBSD: Makefile,v 1.2 2009/07/15 09:42:32 espie Exp $

COMMENT =	backup mysql database directly from drupal

DISTNAME = 	backup_migrate-6.x-1.2
PKGNAME =	drupal6-backup-migrate-1.2p0


post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/files/backup_migrate
.include <bsd.port.mk>
