# $OpenBSD: Makefile,v 1.8 2014/02/08 18:31:43 espie Exp $

COMMENT =	backup mysql database directly from drupal
MAINTAINER =	Marc Espie <espie@openbsd.org>

DISTNAME = 	backup_migrate-6.x-2.8
PKGNAME =	drupal6-backup-migrate-2.8

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/files/backup_migrate
.include <bsd.port.mk>
