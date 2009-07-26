# $OpenBSD: Makefile,v 1.4 2009/07/26 20:09:18 naddy Exp $

COMMENT=	multi user weblog

DISTNAME=	wordpress-mu-1.3.3
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www

HOMEPAGE=	http://mu.wordpress.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://humppa.hu/distfiles/ \
		http://www.bsdfrog.org/OpenBSD/distfiles/

RUN_DEPENDS=	:php5-mysql-*:www/php5/extensions,-mysql

EXTRACT_ONLY=
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/wordpress-mu

SUBST_VARS=	INSTDIR

do-install:
	@mkdir -p ${INSTDIR}/upload
	@cd ${PREFIX} && tar -s /[^\\/]*/./ -C ${INSTDIR} \
	    -xzf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}

.include <bsd.port.mk>
