# $OpenBSD: Makefile,v 1.11 2018/05/15 11:48:25 robert Exp $

COMMENT=	next generation web interface for Kopano

WAPP_VERSION=	3.4.14

PLUGINS_WITH_DEFCONF= \
		contactfax-${WAPP_VERSION}.${MINOR}-${RPMVER} \
		desktopnotifications-2.0.1.0-13.4 \
		filepreviewer-2.0.0.15-10.3 \
		gmaps-${WAPP_VERSION}.${MINOR}-${RPMVER} \
		intranet-0.1-32.3 \
		pimfolder-${WAPP_VERSION}.${MINOR}-${RPMVER} \
		titlecounter-${WAPP_VERSION}.${MINOR}-${RPMVER}
		

PLUGINS=	${PLUGINS_WITH_DEFCONF} \
		folderwidgets-${WAPP_VERSION}.${MINOR}-${RPMVER} \
		quickitems-${WAPP_VERSION}.${MINOR}-${RPMVER}

MINOR=		1477
RPMVER=		842.1
PKGNAME=	kopano-webapp-${WAPP_VERSION}.${MINOR}

EXTRACT_SUFX=	# empty

.for _dfile in ${PLUGINS}
EDISTFILES+=    kopano-webapp-plugin-${_dfile}.noarch.rpm
.endfor
EDISTFILES+=    kopano-webapp-lang-${WAPP_VERSION}.${MINOR}-${RPMVER}.noarch.rpm
EXTRACT_ONLY=   ${EDISTFILES:C/:[0-9]$//}

DISTFILES+=	kopano-webapp-${WAPP_VERSION}.${MINOR}-${RPMVER}.noarch.rpm \
		kopano-webapp-plugin-spell-2.0.0.4-12.1.noarch.rpm \
		kopano-webapp-plugin-spell-de-at-2.0.0.2-7.1.noarch.rpm \
		kopano-webapp-plugin-spell-de-ch-2.0.0.1-6.1.noarch.rpm \
		kopano-webapp-plugin-spell-de-de-2.0.0.1-16.1.noarch.rpm \
		kopano-webapp-plugin-spell-en-gb-2.0.0.1-15.1.noarch.rpm \
		kopano-webapp-plugin-spell-en-us-2.0.0.1-16.1.noarch.rpm \
		kopano-webapp-plugin-spell-es-es-2.0.0.1-15.1.noarch.rpm \
		kopano-webapp-plugin-spell-fr-fr-2.0.0.1-16.1.noarch.rpm \
		kopano-webapp-plugin-spell-it-1.0.0-28.1.noarch.rpm \
		kopano-webapp-plugin-spell-nl-2.0.0.1-17.1.noarch.rpm \
		kopano-webapp-plugin-spell-pl-pl-2.0.0.0-10.5.noarch.rpm

DISTFILES+=	kopano-webapp-plugin-files-2.1.3.263-171.1.noarch.rpm \
		kopano-webapp-plugin-filesbackend-owncloud-2.1.1.75-52.1.noarch.rpm \
		kopano-webapp-plugin-filesbackend-smb-2.1.1.38-40.2.noarch.rpm

DISTFILES+=	kopano-webapp-plugin-meetings-3.0.4.4-33.1.noarch.rpm

DISTFILES+=	kopano-webapp-plugin-mattermost-0.1-14.4.noarch.rpm
		
DISTFILES+=	${EDISTFILES}

MASTER_SITES=	http://nerd.hu/distfiles/kopano-webapp/

CATEGORIES=	mail www

MODULES=	lang/php

MODPHP_BUILDDEP=No
MODPHP_RUNDEP=	No

BUILD_DEPENDS=	converters/rpm2cpio
RUN_DEPENDS=	mail/kopano/core,-mapi # php-mapi

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}
PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/kopano-webapp
TINSTDIR=	${TRUEPREFIX}/kopano-webapp

SUBST_VARS=	INSTDIR TINSTDIR

do-extract:
.for _dfile in ${DISTFILES}
	cd ${WRKDIR} && \
		${LOCALBASE}/bin/rpm2cpio ${FULLDISTDIR}/${_dfile} | cpio -id
.endfor

pre-configure:
	${SUBST_CMD} ${WRKSRC}/etc/kopano/webapp/config.php

do-install:
	cp -Rp ${WRKSRC}/usr/share/kopano-webapp ${PREFIX}
	rm ${INSTDIR}/config.php
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/kopano-webapp.conf \
		${INSTDIR}/kopano-webapp.conf.dist
	cat ${WRKSRC}/etc/kopano/webapp/config.php > \
		${INSTDIR}/config.php.dist

	rm ${INSTDIR}/plugins/kopano-webapp-plugin-mattermost/config.php   
	cat ${WRKSRC}/etc/kopano/webapp/config-kopano-webapp-plugin-mattermost.php > \
		${INSTDIR}/plugins/kopano-webapp-plugin-mattermost/config.php.dist

	rm ${INSTDIR}/plugins/files/config.php   
	cat ${WRKSRC}/etc/kopano/webapp/config-files.php > \
		${INSTDIR}/plugins/files/config.php.dist

	rm ${INSTDIR}/plugins/spreedwebrtc/config.php   
	cat ${WRKSRC}/etc/kopano/webapp/config-meetings.php > \
		${INSTDIR}/plugins/spreedwebrtc/config.php.dist

	rm ${INSTDIR}/plugins/spellchecker/config.php
	cat ${WRKSRC}/etc/kopano/webapp/config-spellchecker.php > \
		${INSTDIR}/plugins/spellchecker/config.php.dist

.for _c in ${PLUGINS_WITH_DEFCONF:C/-.*//}
	rm ${INSTDIR}/plugins/${_c}/config.php
	cat ${WRKSRC}/etc/kopano/webapp/config-${_c}.php > \
		${INSTDIR}/plugins/${_c}/config.php.dist
.endfor

	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
