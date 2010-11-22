# $OpenBSD: Makefile,v 1.14 2010/11/22 09:40:48 espie Exp $

COMMENT=	learning management system

DISTNAME=	moodle-1.9.7
CATEGORIES=	www education

HOMEPAGE=	http://www.moodle.org/

# GPL
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	http://download.moodle.org/stable19/
EXTRACT_SUFX=	.tgz

EXTRACT_ONLY=
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/moodle
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	www/php5/extensions,-curl \
		www/php5/extensions,-gd \
		www/php5/extensions,-mbstring \
		www/php5/extensions,-xmlrpc
RUN_DEPENDS+=	php5-mysql-*|php5-pgsql-*:www/php5/extensions,-mysql

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/*

.include <bsd.port.mk>
