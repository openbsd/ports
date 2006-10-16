# $OpenBSD: Makefile,v 1.5 2006/10/16 14:05:09 kevlo Exp $

COMMENT=	"dynamic object oriented portal script written in PHP"

V=		2.0.15
DISTNAME=	xoops-${V}
PKGNAME=	${DISTNAME}
CATEGORIES=	www

HOMEPAGE=	http://www.xoops.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xoops/}

RUN_DEPENDS=	:php5-mysql-*:www/php5/extensions,-mysql

NO_BUILD=	Yes
NO_REGRESS=	Yes

PREFIX=		/var/www
INSTDIR=	${PREFIX}/xoops
SUBST_VARS=	INSTDIR

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}-${V} ${INSTDIR}

.include <bsd.port.mk>
