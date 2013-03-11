# $OpenBSD: Makefile,v 1.2 2013/03/11 11:44:42 espie Exp $

COMMENT=		elegant and modern git repository browser

DISTNAME=		gitlist-0.3
CATEGORIES=		www

HOMEPAGE=		http://gitlist.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =  Yes

MASTER_SITES=		https://s3.amazonaws.com/gitlist/

MODULES=		lang/php

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

PREFIX=			/var/www
INSTDIR=		${PREFIX}/gitlist/
TINSTDIR=		${TRUEPREFIX}/gitlist/
SUBST_VARS=		INSTDIR TINSTDIR
WRKDIST=		${WRKDIR}/${DISTNAME}/

do-extract:
	mkdir -p ${WRKDIST}
	${GZIP_CMD} -dc ${FULLDISTDIR}/${DISTFILES} | ${TAR} xf - -C ${WRKDIST}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config.ini

do-install:
	rm ${WRKSRC}/config.ini.*
	cp -Rp ${WRKDIST} ${INSTDIR}
	${SUBST_CMD} -c ${FILESDIR}/gitlist.conf \
	    ${INSTDIR}/gitlist.conf.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
