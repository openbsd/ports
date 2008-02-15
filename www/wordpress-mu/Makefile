# $OpenBSD: Makefile,v 1.3 2008/02/15 15:13:14 winiger Exp $

COMMENT=	multi user weblog

DISTNAME=	wordpress-mu-1.3.3
CATEGORIES=	www

HOMEPAGE=	http://mu.wordpress.org/

MAINTAINER=	Marc Winiger <winiger@openbsd.org>

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
