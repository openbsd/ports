# $OpenBSD: Makefile,v 1.20 2013/03/11 11:44:42 espie Exp $

COMMENT=	web based bug tracking

V=		1.2.11
DISTNAME=	mantisbt-$V
PKGNAME=	mantis-$V
REVISION=	0
CATEGORIES=	www
HOMEPAGE=	http://www.mantisbt.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mantisbt/}

MODULES=	lang/php

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	/var/www/mantis
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	mail/femail,-chroot \
		php-mysql-${MODPHP_VSPEC}|php-pgsql-${MODPHP_VSPEC}:lang/php/${MODPHP_VERSION},-mysql

do-install:
	@-test ! -d ${PREFIX}/mantis && mkdir ${PREFIX}/mantis
	@cd ${WRKDIST}; tar cf - . | (cd ${PREFIX}/mantis; tar xf -)
	@find ${PREFIX}/mantis -type f -name '*.orig' -exec rm {} +
	@echo "<?php \$$g_placeholder = 'yes'; ?>" > \
		${PREFIX}/mantis/config_inc.php.placeholder

.include <bsd.port.mk>
