# $OpenBSD: Makefile,v 1.1.1.1 2012/04/10 12:49:31 espie Exp $

COMMENT =	backup mysql database directly from drupal
MAINTAINER =	Marc Espie <espie@openbsd.org>

DISTNAME = 	backup_migrate-7.x-2.2
PKGNAME =	drupal7-backup-migrate-2.2

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/files/backup_migrate
.include <bsd.port.mk>
