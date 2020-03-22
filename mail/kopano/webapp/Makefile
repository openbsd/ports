# $OpenBSD: Makefile,v 1.20 2020/03/22 11:41:28 robert Exp $

COMMENT=	next generation web interface for Kopano

WAPP_VERSION=	4.0
https://download.kopano.io/community/webapp:/webapp-3.5.12.2508%2B1444.950e8c4-RHEL_7-noarch.tar.gz

PLUGINS_WITH_DEFCONF= \
		contactfax-${WAPP_VERSION}.${MINOR}-${RPMVER} \
		desktopnotifications-2.0.3.48-72.1 \
		filepreviewer-2.2.0.26-21.4 \
		gmaps-${WAPP_VERSION}.${MINOR}-${RPMVER} \
		intranet-1.0.1.17-64.1 \
		pimfolder-${WAPP_VERSION}.${MINOR}-${RPMVER} \
		titlecounter-${WAPP_VERSION}.${MINOR}-${RPMVER}


PLUGINS=	${PLUGINS_WITH_DEFCONF} \
		htmleditor-minimal-tinymce-1.0.0.13-27.2 \
		htmleditor-quill-1.0.0.80-77.1 \
		folderwidgets-${WAPP_VERSION}.${MINOR}-${RPMVER} \
		quickitems-${WAPP_VERSION}.${MINOR}-${RPMVER}

MINOR=		2676
RPMVER=		1570.1
PKGNAME=	kopano-webapp-${WAPP_VERSION}.${MINOR}

EXTRACT_SUFX=	# empty

.for _dfile in ${PLUGINS}
EDISTFILES+=    kopano-webapp-plugin-${_dfile}.noarch.rpm
.endfor
EDISTFILES+=    kopano-webapp-lang-${WAPP_VERSION}.${MINOR}-${RPMVER}.noarch.rpm
EXTRACT_ONLY=   ${EDISTFILES:C/:[0-9]$//}

DISTFILES+=	kopano-webapp-${WAPP_VERSION}.${MINOR}-${RPMVER}.noarch.rpm
DISTFILES+=	kopano-webapp-plugin-files-3.0.0.22-328.1.noarch.rpm \
		kopano-webapp-plugin-filesbackend-owncloud-3.0.0.5-104.3.noarch.rpm \
		kopano-webapp-plugin-filesbackend-smb-3.0.0.5-73.1.noarch.rpm

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

	rm ${INSTDIR}/plugins/files/config.php   
	cat ${WRKSRC}/etc/kopano/webapp/config-files.php > \
		${INSTDIR}/plugins/files/config.php.dist

.for _c in ${PLUGINS_WITH_DEFCONF:C/-.*//}
	rm ${INSTDIR}/plugins/${_c}/config.php
	cat ${WRKSRC}/etc/kopano/webapp/config-${_c}.php > \
		${INSTDIR}/plugins/${_c}/config.php.dist
.endfor

	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
