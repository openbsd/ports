# $OpenBSD: Makefile,v 1.38 2009/09/28 13:09:15 sthen Exp $ 

COMMENT=	modular framework for web-based applications

DISTNAME=	horde-3.3.5
CATEGORIES=	devel www
HOMEPAGE=	http://www.horde.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_HORDE:=horde/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
EXTRACT_ONLY=

PREFIX=		/var/www
INSTDIR=	${PREFIX}/horde
SUBST_VARS=	INSTDIR

RUN_DEPENDS+=	:php5-core-*:www/php5/core \
		:php5-mcrypt-*:www/php5/extensions,-mcrypt \
		:pear-*:www/pear \
		:php5-mbstring-*:www/php5/extensions,-mbstring \
		:php5-gd-*:www/php5/extensions,-gd \
		:pear-Log-*:devel/pear-Log \
		:pear-Services-Weather-*:net/pear-Services-Weather \
		:pear-DB-*:databases/pear-DB \
		:pear-Mail-Mime-*:mail/pear-Mail-Mime \
		:pear-SOAP-*:www/pear-SOAP

FLAVORS=	mysql ldap
FLAVOR?=	

.if ${FLAVOR:L:Mmysql}
RUN_DEPENDS+=	:php5-mysql-*:www/php5/extensions,-mysql
.else
RUN_DEPENDS+=	:php5-pgsql-*:www/php5/extensions,-pgsql
.endif

.if ${FLAVOR:L:Mldap}
RUN_DEPENDS+=	:php5-ldap-*:www/php5/extensions,-ldap
.endif

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@chown -R ${BINOWN}:${BINGRP} ${PREFIX}/${DISTNAME}
	@mv ${PREFIX}/${DISTNAME} ${INSTDIR}

.include <bsd.port.mk>
