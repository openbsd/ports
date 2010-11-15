# $OpenBSD: Makefile,v 1.4 2010/11/15 09:05:40 stephan Exp $

COMMENT =	backup mysql database directly from drupal

DISTNAME = 	backup_migrate-6.x-2.2
PKGNAME =	drupal6-backup-migrate-2.2
REVISION =	0

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/files/backup_migrate
.include <bsd.port.mk>
