# $OpenBSD: Makefile,v 1.6 2005/10/15 04:00:13 kevlo Exp $

COMMENT=	"standard compliant weblog"

V=		1.5.2
DISTNAME=	wordpress-${V}
CATEGORIES=	www

HOMEPAGE=	http://wordpress.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.stu.edu.tw/pub/wordpress/

RUN_DEPENDS=	:php5-mysql-*:www/php5/extensions,-mysql

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/wordpress

SUBST_VARS=	INSTDIR

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}

.include <bsd.port.mk>
