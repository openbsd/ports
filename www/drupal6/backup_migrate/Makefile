# $OpenBSD: Makefile,v 1.5 2011/01/08 12:54:52 stephan Exp $

COMMENT =	backup mysql database directly from drupal

DISTNAME = 	backup_migrate-6.x-2.4
PKGNAME =	drupal6-backup-migrate-2.4

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/files/backup_migrate
.include <bsd.port.mk>
