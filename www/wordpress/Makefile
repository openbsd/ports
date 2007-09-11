# $OpenBSD: Makefile,v 1.11 2007/09/11 08:57:16 sthen Exp $

COMMENT=	standard compliant weblog

DISTNAME=	wordpress-2.2.3
CATEGORIES=	www

HOMEPAGE=	http://wordpress.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
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
