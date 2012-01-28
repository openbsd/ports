# $OpenBSD: Makefile,v 1.6 2012/01/28 11:20:52 espie Exp $

COMMENT =	backup mysql database directly from drupal
MAINTAINER =	Marc Espie <espie@openbsd.org>

DISTNAME = 	backup_migrate-6.x-2.4
PKGNAME =	drupal6-backup-migrate-2.4

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/files/backup_migrate
.include <bsd.port.mk>
