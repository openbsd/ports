# $OpenBSD: Makefile,v 1.3 2012/03/15 13:38:33 ajacoutot Exp $

COMMENT=	easy to use web gallery

DISTNAME=	photoshow-0.0.20111228
CATEGORIES=	www graphics
REVISION=	0

HOMEPAGE=	http://www.photoshow-gallery.com/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.bsdfrog.org/

MODULES=	lang/php

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/photoshow
TINSTDIR=	${TRUEPREFIX}/photoshow
SUBST_VARS=	INSTDIR TINSTDIR

RUN_DEPENDS=	archivers/pecl-zip

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
