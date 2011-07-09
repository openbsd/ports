# $OpenBSD: Makefile,v 1.15 2011/07/09 00:14:46 robert Exp $

COMMENT=	learning management system

DISTNAME=	moodle-1.9.7
REVISION=	0
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

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-curl \
		lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-xmlrpc
RUN_DEPENDS+=	php-mysql-*|php-pgsql-*:lang/php/${MODPHP_VERSION},-mysql

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/*

.include <bsd.port.mk>
