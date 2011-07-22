# $OpenBSD: Makefile,v 1.10 2011/07/22 10:20:11 sthen Exp $

COMMENT=	bacula(8) web interface

DISTNAME=	webacula-5.0.3

REVISION=	8

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
		php-pdo_pgsql-*|php-pdo_mysql-*|php-pdo_sqlite-*:lang/php/${MODPHP_VERSION},-pdo_pgsql \
		www/zendframework>=1.10.8p1 \
		sysutils/bacula,pgsql,-server

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/webacula
TINSTDIR=	${TRUEPREFIX}/webacula
SUBST_VARS=	INSTDIR TINSTDIR

do-install:
	mv ${WRKSRC} ${INSTDIR}
	${SUBST_CMD} ${INSTDIR}/application/config.ini \
		${INSTDIR}/install/webacula.conf
.for i in install/webacula_mysql_create_database.sh \
	install/webacula_postgresql_create_database.sh \
	install/webacula_postgresql_make_tables.sh \
	application/config.ini
	mv ${INSTDIR}/$i ${INSTDIR}/$i.dist
.endfor
	${SUBST_CMD} -c ${FILESDIR}/webacula-chroot-bconsole.sh \
		${INSTDIR}/webacula-chroot-bconsole
	find ${INSTDIR} -type f -name \*.orig -or -name \*.gitignore \
		-or -name \*.project -or -name \*.beforesubst | xargs rm
	chown -R ${BINOWN}:${BINGRP} ${INSTDIR}

.include <bsd.port.mk>
