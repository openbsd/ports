# $OpenBSD: Makefile,v 1.1.1.1 2004/12/24 09:19:48 mbalmer Exp $ 

COMMENT=	"web-based LDAP browser to manage LDAP servers"

DISTNAME=	phpldapadmin-0.9.5
CATEGORIES=	www
HOMEPAGE=	http://phpldapadmin.sourceforge.net/	

MAINTAINER=	AJ Nelson <dru@dummydata.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# Original distfile cannot be downloaded automatically.
# Registration is needed.
MASTER_SITES=	ftp://ftp.etc.msys.ch/pub/sources/phpldapadmin/

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
EXTRACT_ONLY=

PREFIX=		/var/www
INSTDIR=	${PREFIX}/phpldapadmin
SUBST_VARS=	INSTDIR

PHP_VERSION=	5
RUN_DEPENDS=	:php${PHP_VERSION}-ldap-*:www/php${PHP_VERSION}/extensions,-ldap	

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}

.include <bsd.port.mk>
