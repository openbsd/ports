# $OpenBSD: Makefile,v 1.5 2005/11/01 17:16:25 bernd Exp $

COMMENT=	"web-based collaborative editing environment"

V=		1.5.0
DISTNAME=	mediawiki-${V}
PKGNAME=	${DISTNAME}p0
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

RUN_DEPENDS=	:php5-mysql-*:www/php5/extensions,-mysql \
		:php5-gd-*:www/php5/extensions,-gd

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}
	@mv ${INSTDIR}-${V} ${INSTDIR}

.include <bsd.port.mk>
