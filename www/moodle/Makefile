# $OpenBSD: Makefile,v 1.2 2004/12/27 00:55:49 kevlo Exp $

COMMENT=	"learning management system"

V=		1.4.3
DISTNAME=	moodle-${V}
CATEGORIES=	www education

HOMEPAGE=	http://www.moodle.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=moodle/}
EXTRACT_SUFX=	.tgz

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/moodle
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	:php5-mysql-*:www/php5/extensions,-mysql \
		:php5-pgsql-*:www/php5/extensions,-pgsql \
		:php5-gd-*:www/php5/extensions,-gd

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}

.include <bsd.port.mk>
