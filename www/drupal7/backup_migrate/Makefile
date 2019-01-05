# $OpenBSD: Makefile,v 1.7 2019/01/05 22:56:20 danj Exp $

COMMENT =	backup mysql database directly from drupal
REVISION =	0

MODDRUPAL_PROJECT = backup_migrate
MODDRUPAL_PKGNAME = backup-migrate
MODDRUPAL_VERSION = 3.5

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/${DRUPAL_ROOT}/files/backup_migrate
.include <bsd.port.mk>
