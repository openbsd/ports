# $OpenBSD: Makefile,v 1.14 2009/04/30 14:47:43 pea Exp $ 

COMMENT=	web-based LDAP browser to manage LDAP servers

VERSION=	1.1.0.7
DISTNAME=	phpldapadmin-${VERSION}
CATEGORIES=	www
HOMEPAGE=	http://phpldapadmin.sourceforge.net/	

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=phpldapadmin/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/${DISTNAME}
SUBST_VARS=	INSTDIR VERSION

RUN_DEPENDS=	:php5-ldap-*:www/php5/extensions,-ldap	

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}

.include <bsd.port.mk>
