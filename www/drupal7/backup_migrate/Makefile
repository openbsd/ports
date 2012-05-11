# $OpenBSD: Makefile,v 1.2 2012/05/11 06:59:28 espie Exp $

COMMENT =	backup mysql database directly from drupal
MAINTAINER =	Marc Espie <espie@openbsd.org>

DISTNAME = 	backup_migrate-7.x-2.3
PKGNAME =	drupal7-backup-migrate-2.3

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/files/backup_migrate
.include <bsd.port.mk>
