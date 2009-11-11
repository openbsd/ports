# $OpenBSD: Makefile,v 1.1.1.1 2009/11/11 21:10:33 sthen Exp $

COMMENT=	graphical network traffic map

DISTNAME=	php-weathermap-0.96a
EXTRACT_SUFX=	.zip

CATEGORIES=	net www

HOMEPAGE=	http://www.network-weathermap.com/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}files/

RUN_DEPENDS=	:pear-*:www/pear \
		:php5-gd-*:www/php5/extensions,-gd \
		:php5-core-*:www/php5/core

NO_REGRESS=	Yes

PKG_ARCH=	*
WRKDIST=	${WRKDIR}/weathermap

PREFIX=		/var/www
INSTDIR=	${PREFIX}/weathermap
SUBST_VARS=	INSTDIR

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
