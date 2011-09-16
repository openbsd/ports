# $OpenBSD: Makefile,v 1.6 2011/09/16 12:00:06 espie Exp $

COMMENT =	professional PHP application framework

VERSION =	4.1.3
REVISION =	2
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

MODULES =	lang/php
RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-gd

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
