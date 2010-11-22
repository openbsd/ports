# $OpenBSD: Makefile,v 1.15 2010/11/22 08:36:54 espie Exp $

COMMENT=	all-in-one wiki/groupware/CMS solution

V=		4.2
DISTNAME=	tikiwiki-${V}
CATEGORIES=	www

REVISION=	1

HOMEPAGE=	http://tikiwiki.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tikiwiki/}

EXTRACT_ONLY=
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/tikiwiki
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	www/php5/extensions,-gd \
		www/php5/extensions,-xmlrpc \
		www/php5/extensions,-mbstring \
		www/php5/extensions,-mysqli

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}-${V} ${INSTDIR}

.include <bsd.port.mk>
