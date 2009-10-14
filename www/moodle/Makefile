# $OpenBSD: Makefile,v 1.11 2009/10/14 18:03:17 espie Exp $

COMMENT=	learning management system

DISTNAME=	moodle-1.6.3
PKGNAME=	${DISTNAME}p1
CATEGORIES=	www education

HOMEPAGE=	http://www.moodle.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	http://download.moodle.org/stable16/
EXTRACT_SUFX=	.tgz

EXTRACT_ONLY=
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/moodle
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	:php5-gd-*:www/php5/extensions,-gd \
		:php5-mbstring-*:www/php5/extensions,-mbstring
RUN_DEPENDS+=	:php5-mysql-*|php5-pgsql-*:www/php5/extensions,-mysql

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/*

.include <bsd.port.mk>
