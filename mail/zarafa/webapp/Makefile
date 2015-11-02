# $OpenBSD: Makefile,v 1.18 2015/11/02 10:59:53 robert Exp $

COMMENT=	next generation web interface for Zarafa

WAPP_BUILD=	51748
WAPP_VERSION=	2.1.0
EPOCH=		0

PLUGINS_WITH_DEFCONF= \
		browsercompatibility \
		contactfax \
		extbox \
		gmaps \
		pdfbox \
		pimfolder \
		titlecounter \
		webappmanual \
		webodf \
		xmpp

PLUGINS=	${PLUGINS_WITH_DEFCONF} \
		clockwidget \
		folderwidgets \
		lang \
		oauthlib \
		quickitems

RPMVER=		419.1
PKGNAME=	zarafa-webapp-${WAPP_VERSION}

EXTRACT_SUFX=	# empty

.for _dfile in ${PLUGINS}
EDISTFILES+=    zarafa-webapp-${_dfile}-${WAPP_VERSION}.${WAPP_BUILD}-${RPMVER}.noarch.rpm
.endfor
EXTRACT_ONLY=   ${EDISTFILES:C/:[0-9]$//}

DISTFILES+=	zarafa-webapp-${WAPP_VERSION}.${WAPP_BUILD}-${RPMVER}.noarch.rpm \
		${EDISTFILES}

MASTER_SITES=	http://download.zarafa.com/community/final/WebApp/${WAPP_VERSION}/rhel-5/

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
