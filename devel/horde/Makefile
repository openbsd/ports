# $OpenBSD: Makefile,v 1.15 2005/03/14 12:33:08 mbalmer Exp $ 

COMMENT=	"modular framework for web-based applications"

V=		3.0.3
DISTNAME=	horde-${V}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel www
HOMEPAGE=	http://www.horde.org/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_HORDE:=horde/tarballs/}

RUN_DEPENDS=	pear-DB-*:databases/pear-DB

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
EXTRACT_ONLY=

PREFIX=		/var/www
INSTDIR=	${PREFIX}/horde
SUBST_VARS=	INSTDIR

PHP_VERSION=	5
RUN_DEPENDS=	:php${PHP_VERSION}-core-*:www/php${PHP_VERSION}/core \
		:php${PHP_VERSION}-mcrypt-*:www/php${PHP_VERSION}/extensions,-mcrypt \
		:php${PHP_VERSION}-pear-*:www/php${PHP_VERSION}/core,-pear \
		::devel/pear-Log \
		::mail/pear-Mail-Mime

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}-${V} ${INSTDIR}

.include <bsd.port.mk>
