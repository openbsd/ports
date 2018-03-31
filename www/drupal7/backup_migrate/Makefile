# $OpenBSD: Makefile,v 1.6 2018/03/31 12:13:46 espie Exp $

COMMENT =	backup mysql database directly from drupal

MODDRUPAL_PROJECT = backup_migrate
MODDRUPAL_PKGNAME = backup-migrate
MODDRUPAL_VERSION = 3.5

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/files/backup_migrate
.include <bsd.port.mk>
