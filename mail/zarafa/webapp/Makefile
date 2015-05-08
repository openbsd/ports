# $OpenBSD: Makefile,v 1.17 2015/05/08 09:08:44 espie Exp $

COMMENT=	next generation web interface for Zarafa

WAPP_BUILD=	48619
WAPP_VERSION=	2.0.2
EPOCH=		0

PLUGINS_WITH_DEFCONF= \
		browsercompatibility \
		contactfax \
		extbox \
		facebook \
		feedback \
		gmaps \
		pdfbox \
		pimfolder \
		spreed \
		statslogging \
		sugarcrm \
		titlecounter \
		webappmanual \
		webodf \
		xmpp \
		zperformance

PLUGINS=	${PLUGINS_WITH_DEFCONF} \
		clockwidget \
		facebookwidget \
		folderwidgets \
		lang \
		oauthlib \
		quickitems \
		shellgame \
		twidget

RPMVER=		116.1
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
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/zarafa-webapp.conf \
		${INSTDIR}/zarafa-webapp.conf.dist
	cat ${WRKSRC}/etc/zarafa/webapp/config.php > \
		${INSTDIR}/config.php.dist

.for _c in ${PLUGINS_WITH_DEFCONF}
	cat ${WRKSRC}/etc/zarafa/webapp/config-${_c}.php > \
		${INSTDIR}/plugins/${_c}/config.php.dist
.endfor

	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
