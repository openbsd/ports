# $OpenBSD: Makefile,v 1.9 2016/06/30 11:48:24 espie Exp $

COMMENT =	backup mysql database directly from drupal
MAINTAINER =	Marc Espie <espie@openbsd.org>

DISTNAME = 	backup_migrate-6.x-2.8
PKGNAME =	drupal6-backup-migrate-2.8
REVISION =	1

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/files/backup_migrate
.include <bsd.port.mk>
