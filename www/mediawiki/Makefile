# $OpenBSD: Makefile,v 1.1.1.1 2004/12/22 08:13:03 kevlo Exp $

COMMENT=	"web-based collaborative editing environment"

V=		1.3.9
DISTNAME=	mediawiki-${V}
CATEGORIES=	www

HOMEPAGE=	http://wikipedia.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wikipedia/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/mediawiki
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	:php4-mysql->=4.3.1:www/php4/extensions,-mysql \
		:php4-gd->=4.3.10:www/php4/extensions,-gd

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}-${V} ${INSTDIR}

.include <bsd.port.mk>
