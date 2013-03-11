# $OpenBSD: Makefile,v 1.12 2013/03/11 11:35:54 espie Exp $

COMMENT=	graphical network traffic map

DISTNAME=	php-weathermap-0.97a
REVISION=	6
EXTRACT_SUFX=	.zip

CATEGORIES=	net www

HOMEPAGE=	http://www.network-weathermap.com/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}files/

MODULES=	lang/php

RUN_DEPENDS=	www/pear \
		lang/php/${MODPHP_VERSION},-gd

NO_TEST=	Yes

PKG_ARCH=	*
WRKDIST=	${WRKDIR}/weathermap

PREFIX=		/var/www
INSTDIR=	${PREFIX}/weathermap
SUBST_VARS=	INSTDIR

do-configure:
	perl -pi -e 's,^#!/usr/bin/php,#!${MODPHP_BIN},;' \
	    -e 's,/usr/bin/rrdtool,${LOCALBASE}/bin/rrdtool,;' \
	    ${WRKSRC}/weathermap

do-build:
	chmod 644 ${WRKSRC}/editor.*
.for i in weathermap.conf configs/simple.conf
	mv ${WRKSRC}/$i ${WRKSRC}/$i-dist
.endfor

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${WRKSRC}; pax -rw * ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
