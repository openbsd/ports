# $OpenBSD: Makefile,v 1.9 2008/08/20 08:44:44 ajacoutot Exp $

COMMENT=	all-in-one wiki/groupware/CMS solution

V=		2.0
DISTNAME=	tikiwiki-${V}
CATEGORIES=	www

HOMEPAGE=	http://tikiwiki.org/

# LGPL
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

RUN_DEPENDS=	:php5-gd-*:www/php5/extensions,-gd \
		:php5-xmlrpc-*:www/php5/extensions,-xmlrpc \
		:php5-mbstring-*:www/php5/extensions,-mbstring \
		:php5-mysqli-*:www/php5/extensions,-mysqli
		
do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}-${V} ${INSTDIR}
	@${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${INSTDIR}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
