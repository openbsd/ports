# $OpenBSD: Makefile,v 1.3 2009/03/19 09:34:59 ajacoutot Exp $

COMMENT=	zarafa webaccess frontend

V=		6.20.3
DISTNAME=	zarafa-webaccess-ajax-${V}
PKGNAME=	zarafa-webaccess-${V}
CATEGORIES=	mail www productivity

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		zarafa-webaccess-mobile-${V}${EXTRACT_SUFX}

MASTER_SITES=	http://www.bsdfrog.org/OpenBSD/distfiles/zarafa/

RUN_DEPENDS=	::mail/zarafa/zarafa,-php \
		::devel/smarty

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/zarafa
SUBST_VARS=	INSTDIR

WRKDIST=	${WRKDIR}

do-install:
	${SUBST_CMD} ${WRKDIR}/php-webclient-ajax/config.php.dist
	find ${WRKDIR} -name \*.orig -or -name \*.bak | xargs rm -f
	${INSTALL_DATA_DIR} ${PREFIX}/zarafa
	mv ${WRKDIR}/php-webclient-ajax ${INSTDIR}/webaccess
	mv ${WRKDIR}/php-mobile-webaccess ${INSTDIR}/webaccess-mobile
	mv ${INSTDIR}/webaccess-mobile/config.php \
		${INSTDIR}/webaccess-mobile/config.php.dist
	mv ${INSTDIR}/webaccess/debug.php \
		${INSTDIR}/webaccess/debug.php.disabled
	mv ${INSTDIR}/webaccess/client/layout/img/login.jpg \
		${INSTDIR}/webaccess/client/layout/img/_login.jpg
	mv ${INSTDIR}/webaccess-mobile/debug.php \
		${INSTDIR}/webaccess-mobile/debug.php.disabled
	${INSTALL_DATA} /dev/null ${INSTDIR}/webaccess/debug.txt 
	${INSTALL_DATA} /dev/null ${INSTDIR}/webaccess-mobile/debug.txt
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
