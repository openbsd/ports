# $OpenBSD: Makefile,v 1.2 2005/04/04 19:19:57 mbalmer Exp $ 

COMMENT=	"web-based LDAP browser to manage LDAP servers"

VERSION=	0.9.6
DISTNAME=	phpldapadmin-${VERSION}
CATEGORIES=	www
HOMEPAGE=	http://phpldapadmin.sourceforge.net/	

MAINTAINER=	AJ Nelson <dru@dummydata.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=phpldapadmin/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
EXTRACT_ONLY=

PREFIX=		/var/www
INSTDIR=	${PREFIX}/${DISTNAME}
SUBST_VARS=	INSTDIR VERSION

RUN_DEPENDS=	:php5-ldap-*:www/php5/extensions,-ldap	

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}

.include <bsd.port.mk>
