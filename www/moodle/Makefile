# $OpenBSD: Makefile,v 1.6 2005/11/22 07:47:46 kevlo Exp $

COMMENT=	"learning management system"

V=		1.5.3
DISTNAME=	moodle-${V}
CATEGORIES=	www education

HOMEPAGE=	http://www.moodle.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	http://download.moodle.org/stable15/
EXTRACT_SUFX=	.tgz

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/moodle
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	:php5-gd-*:www/php5/extensions,-gd

FLAVORS=	mysql pgsql
FLAVOR?=

.if ${FLAVOR:L:Mmysql}
RUN_DEPENDS+=	:php5-mysql-*:www/php5/extensions,-mysql
.endif

.if ${FLAVOR:L:Mpgsql}
RUN_DEPENDS+=	:php5-pgsql-*:www/php5/extensions,-pgsql
.endif

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}

.include <bsd.port.mk>
