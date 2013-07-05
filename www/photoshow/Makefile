# $OpenBSD: Makefile,v 1.7 2013/07/05 09:34:35 jasper Exp $

COMMENT=	easy to use web gallery

DISTNAME=	photoshow-0.0.20111228
CATEGORIES=	www graphics
REVISION=	2

HOMEPAGE=	http://www.photoshow-gallery.com/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.bsdfrog.org/

MODULES=	lang/php

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/photoshow
TINSTDIR=	${TRUEPREFIX}/photoshow
SUBST_VARS=	INSTDIR TINSTDIR

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-zip

do-install:
	cp -R ${WRKSRC} ${INSTDIR}
	mv ${INSTDIR}/config.php ${INSTDIR}/config.php.dist
	${SUBST_CMD} -c ${FILESDIR}/photoshow.conf \
		${INSTDIR}/photoshow.conf.dist
	${SUBST_CMD} -c ${FILESDIR}/dot.htaccess \
		${INSTDIR}/.htaccess.dist
	find ${INSTDIR} -type f -name \*.orig -or -name \*.beforesubst | xargs rm
	chown -R ${BINOWN}:${BINGRP} ${INSTDIR}

.include <bsd.port.mk>
