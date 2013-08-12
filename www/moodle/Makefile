# $OpenBSD: Makefile,v 1.24 2013/08/12 04:11:21 robert Exp $

COMMENT=	learning management system

DISTNAME=	moodle-1.9.16
REVISION=	1
CATEGORIES=	www education

HOMEPAGE=	http://www.moodle.org/

# GPLv2+ (note if updating Moodle 2.x is GPLv3+)
PERMIT_PACKAGE_CDROM=  Yes

MASTER_SITES=	http://download.moodle.org/download.php/direct/stable19/
EXTRACT_SUFX=	.tgz

EXTRACT_ONLY=
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/moodle
SUBST_VARS=	INSTDIR

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-curl \
		lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-xmlrpc
RUN_DEPENDS+=	php-mysql-${MODPHP_VSPEC}|php-pgsql-${MODPHP_VSPEC}:lang/php/${MODPHP_VERSION},-mysql

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/*

.include <bsd.port.mk>
