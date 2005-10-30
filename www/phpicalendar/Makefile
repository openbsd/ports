# $OpenBSD: Makefile,v 1.5 2005/10/30 10:57:40 xsa Exp $

COMMENT=	"web-based iCal file parser"

V=		2.1
DISTNAME=	phpicalendar-${V}
CATEGORIES=	www

HOMEPAGE=	http://phpicalendar.net/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=phpicalendar/}
EXTRACT_SUFX=	.tgz
EXTRACT_ONLY=

RUN_DEPENDS=	:php5-core-*:www/php5/core

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/phpicalendar

SUBST_VARS=	INSTDIR

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}-${V} ${INSTDIR}
	@mv ${INSTDIR}/config.inc.php ${INSTDIR}/config.inc.php.default

.include <bsd.port.mk>
