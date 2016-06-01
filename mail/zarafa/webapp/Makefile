# $OpenBSD: Makefile,v 1.22 2016/06/01 22:22:48 sthen Exp $

COMMENT=	next generation web interface for Zarafa

WAPP_VERSION=	2.2.0
EPOCH=		0

PLUGINS_WITH_DEFCONF= \
		browsercompatibility \
		contactfax \
		files \
		gmaps \
		pimfolder \
		titlecounter \
		webappmanual \
		xmpp

PLUGINS=	${PLUGINS_WITH_DEFCONF} \
		clockwidget \
		folderwidgets \
		lang \
		quickitems

MINOR=		414
RPMVER=		185.1
PKGNAME=	zarafa-webapp-${WAPP_VERSION}

EXTRACT_SUFX=	# empty

.for _dfile in ${PLUGINS}
EDISTFILES+=    zarafa-webapp-${_dfile}-${WAPP_VERSION}.${MINOR}-${RPMVER}.noarch.rpm
.endfor
EXTRACT_ONLY=   ${EDISTFILES:C/:[0-9]$//}

DISTFILES+=	zarafa-webapp-${WAPP_VERSION}.${MINOR}-${RPMVER}.noarch.rpm \
		${EDISTFILES}

MASTER_SITES=	http://download.zarafa.com/community/final/WebApp/${WAPP_VERSION}/rhel-6/

CATEGORIES=	mail www

MODULES=	lang/php

MODPHP_BUILDDEP=No
MODPHP_RUNDEP=	No

BUILD_DEPENDS=	converters/rpm2cpio
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
.for _dfile in ${DISTFILES}
	cd ${WRKDIR} && \
		${LOCALBASE}/bin/rpm2cpio ${FULLDISTDIR}/${_dfile} | cpio -id
.endfor

pre-configure:
	${SUBST_CMD} ${WRKSRC}/etc/zarafa/webapp/config.php

do-install:
	cp -Rp ${WRKSRC}/usr/share/zarafa-webapp ${PREFIX}
	rm ${INSTDIR}/config.php
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/zarafa-webapp.conf \
		${INSTDIR}/zarafa-webapp.conf.dist
	cat ${WRKSRC}/etc/zarafa/webapp/config.php > \
		${INSTDIR}/config.php.dist

.for _c in ${PLUGINS_WITH_DEFCONF}
	rm ${INSTDIR}/plugins/${_c}/config.php
	cat ${WRKSRC}/etc/zarafa/webapp/config-${_c}.php > \
		${INSTDIR}/plugins/${_c}/config.php.dist
.endfor

	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
