# $OpenBSD: Makefile,v 1.14 2009/10/20 22:34:54 ajacoutot Exp $

COMMENT=	zarafa webaccess frontend

V=		6.30.3
DISTNAME=	zarafa-webaccess-ajax-${V}
PKGNAME=	zarafa-webaccess-${V}
CATEGORIES=	mail www productivity

MASTER_SITES=	http://www.bsdfrog.org/OpenBSD/distfiles/zarafa/

RUN_DEPENDS=	::mail/zarafa/zarafa,-php

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/zarafa-webaccess
SUBST_VARS=	INSTDIR

WRKDIST=	${WRKDIR}

do-install:
	${SUBST_CMD} ${WRKDIR}/php-webclient-ajax/config.php.dist
	find ${WRKDIR} -name \*.orig -or -name \*.bak | xargs rm -f
	mv ${WRKDIR}/php-webclient-ajax ${INSTDIR}
	mv ${INSTDIR}/debug.php \
		${INSTDIR}/debug.php.disabled
	mv ${INSTDIR}/client/layout/img/login.jpg \
		${INSTDIR}/client/layout/img/_login.jpg
	${INSTALL_DATA} /dev/null ${INSTDIR}/debug.txt 
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
