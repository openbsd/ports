# $OpenBSD: Makefile,v 1.65 2011/10/18 08:21:13 giovanni Exp $

COMMENT=	tool to handle the administration of MySQL over the web

V=		3.4.6
DISTNAME=	phpMyAdmin-${V}
CATEGORIES=	www
HOMEPAGE=	http://www.phpmyadmin.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=phpmyadmin/}
DISTFILES=	${DISTNAME}-all-languages${EXTRACT_SUFX}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
EXTRACT_ONLY=

PREFIX=		/var/www
INSTDIR=	${PREFIX}/phpMyAdmin
SUBST_VARS=	INSTDIR V

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-mysql \
		lang/php/${MODPHP_VERSION},-mcrypt \
		lang/php/${MODPHP_VERSION},-gd

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTFILES}
	@mv ${INSTDIR}-${V}-all-languages ${INSTDIR}

.include <bsd.port.mk>
