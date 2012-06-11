# $OpenBSD: Makefile,v 1.23 2012/06/11 08:33:58 ajacoutot Exp $

COMMENT=	bacula(8) web interface

DISTNAME=	webacula-5.5.1
REVISION=	4

CATEGORIES=	www sysutils

HOMEPAGE=	http://webacula.sourceforge.net/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=webacula/}

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-gd \
		php-pdo_pgsql-${MODPHP_VSPEC}|php-pdo_mysql-${MODPHP_VSPEC}|php-pdo_sqlite-${MODPHP_VSPEC}:lang/php/${MODPHP_VERSION},-pdo_pgsql \
		www/zendframework>=1.10.8p1 \
		sysutils/bacula,-main

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/webacula
TINSTDIR=	${TRUEPREFIX}/webacula
SUBST_VARS=	INSTDIR TINSTDIR

pre-configure:
	perl -pi -e 's,bin/bash,/bin/sh,g' \
		${WRKSRC}/install/{MySql,PostgreSql}/{10_make_tables.sh,20_acl_make_tables.sh}

do-install:
	mv ${WRKSRC} ${INSTDIR}
	${SUBST_CMD} ${INSTDIR}/application/config.ini \
		${INSTDIR}/install/apache/webacula.conf
.for i in install/db.conf application/config.ini html/.htaccess
	mv ${INSTDIR}/$i ${INSTDIR}/$i.dist
.endfor
	${SUBST_CMD} -c ${FILESDIR}/webacula-chroot-bconsole.sh \
		${INSTDIR}/webacula-chroot-bconsole
	find ${INSTDIR} -type f -name \*.orig -or -name \*.gitignore \
		-or -name \*.project -or -name \*.beforesubst \
		-or -name \*.original | xargs rm
	chown -R ${BINOWN}:${BINGRP} ${INSTDIR}

.include <bsd.port.mk>
