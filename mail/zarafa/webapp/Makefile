# $OpenBSD: Makefile,v 1.1.1.1 2012/04/25 06:56:46 ajacoutot Exp $

COMMENT=	next generation web interface for Zarafa

WAPP_BUILD=	33778
WAPP_VERSION=	7.1.0

DISTNAME=	zarafa-webapp-${WAPP_VERSION}-${WAPP_BUILD}.noarch.rpm
PKGNAME=	zarafa-webapp-${WAPP_VERSION}

EXTRACT_SUFX=	# empty

HOMEPAGE=	http://www.zarafa.com/webapp

MASTER_SITES=	http://download.zarafa.com/community/final/WebApp/rhel/

CATEGORIES=	mail www

MODULES=	lang/php

MODPHP_BUILDDEP=No
MODPHP_RUNDEP=	No

BUILD_DEPENDS=	converters/rpm2cpio
RUN_DEPENDS=	mail/zarafa/zarafa,-web # php-mapi

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}
PREFIX=		/var/www
INSTDIR=	${PREFIX}/zarafa-webapp
TINSTDIR=	${TRUEPREFIX}/zarafa-webapp

SUBST_VARS=	INSTDIR TINSTDIR

do-extract:
	cd ${WRKDIR} && \
		${LOCALBASE}/bin/rpm2cpio ${FULLDISTDIR}/${DISTNAME} | cpio -id

pre-configure:
	${SUBST_CMD} ${WRKSRC}/etc/zarafa/webapp/config.php

do-install:
	cp -Rp ${WRKSRC}/usr/share/zarafa-webapp ${PREFIX}
	${SUBST_CMD} -c ${FILESDIR}/zarafa-webapp.conf \
		${INSTDIR}/zarafa-webapp.conf.dist
	cat ${WRKSRC}/etc/zarafa/webapp/config.php > \
		${INSTDIR}/config.php.dist
	rm ${INSTDIR}/config.php
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
