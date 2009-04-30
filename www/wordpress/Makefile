# $OpenBSD: Makefile,v 1.17 2009/04/30 12:54:38 kevlo Exp $

COMMENT=	standard compliant weblog

DISTNAME=	wordpress-2.7.1
CATEGORIES=	www

HOMEPAGE=	http://wordpress.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

RUN_DEPENDS=	:php5-mysql-*:www/php5/extensions,-mysql

EXTRACT_ONLY=
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/wordpress

SUBST_VARS=	INSTDIR

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/*

.include <bsd.port.mk>
