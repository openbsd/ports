# $OpenBSD: Makefile,v 1.16 2011/11/16 15:56:37 robert Exp $

COMMENT=	web based bug tracking

V=		1.1.6
DISTNAME=	mantisbt-${V}
PKGNAME=	mantis-${V}
REVISION=	4
CATEGORIES=	www
HOMEPAGE=	http://www.mantisbt.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mantisbt/}

MODULES=	lang/php

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	/var/www/mantis
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	mail/femail,-chroot \
		php-mysql-*|php-pgsql-*:lang/php/${MODPHP_VERSION},-mysql

do-install:
	@-test ! -d ${PREFIX}/mantis && mkdir ${PREFIX}/mantis
	@cd ${WRKDIST}; tar cf - . | (cd ${PREFIX}/mantis; tar xf -)
	@echo "<?php \$$g_placeholder = 'yes'; ?>" > \
		${PREFIX}/mantis/config_inc.php.placeholder

.include <bsd.port.mk>
