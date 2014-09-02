# $OpenBSD: Makefile,v 1.14 2014/09/02 11:10:35 robert Exp $

COMMENT=	next generation web interface for Zarafa

WAPP_BUILD=	45357
WAPP_VERSION=	1.6
EPOCH=		0

DISTNAME=	zarafa-webapp-${WAPP_VERSION}-${WAPP_BUILD}.noarch.rpm
PKGNAME=	zarafa-webapp-${WAPP_VERSION}

EXTRACT_SUFX=	# empty

MASTER_SITES=	http://download.zarafa.com/community/final/WebApp/${WAPP_VERSION}/rhel/

CATEGORIES=	mail www

MODULES=	lang/php

MODPHP_BUILDDEP=No
MODPHP_RUNDEP=	No

BUILD_DEPENDS=	rpm-*|rpm2cpio-*:converters/rpm2cpio
RUN_DEPENDS=	mail/zarafa/zarafa,-web # php-mapi

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}
PREFIX=		${VARBASE}/www
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

.for _c in browsercompatibility statslogging xmpp zdeveloper zperformance
	cat ${WRKSRC}/etc/zarafa/webapp/config-${_c}.php > \
		${INSTDIR}/plugins/${_c}/config.php.dist
	rm ${INSTDIR}/plugins/${_c}/config.php
.endfor

	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
