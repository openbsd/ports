# $OpenBSD: Makefile,v 1.2 2009/08/24 16:36:31 jasper Exp $

COMMENT =	professional PHP application framework

VERSION =	4.1.3
DISTNAME =	ezpublish-${VERSION}-gpl
PKGNAME =	ezpublish-${VERSION}
CATEGORIES =	www

HOMEPAGE =	http://ez.no/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}/content/download/270150/2473822/version/3/file/
EXTRACT_SUFX =	.tar.bz2

RUN_DEPENDS =	:php5-gd-*:www/php5/extensions,-gd \
		:php5-mbstring-*:www/php5/extensions,-mbstring

NO_BUILD =	Yes
NO_REGRESS =	Yes
PKG_ARCH =	*

PREFIX =	/var/www
INSTDIR =	${PREFIX}/ezpublish
SUBST_VARS =	INSTDIR

WRKDIST =	${WRKDIR}/ezpublish-${VERSION}

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${WRKSRC} && ${TAR} -cf - . | ${TAR} -C ${INSTDIR} -xf -
	find ${INSTDIR} -name '*.orig' -type f | xargs -r rm -f
	${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
