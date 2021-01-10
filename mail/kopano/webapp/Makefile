# $OpenBSD: Makefile,v 1.22 2021/01/10 22:33:22 kn Exp $

COMMENT=	next generation web interface for Kopano

WAPP_VERSION=	4.1

PLUGINS_WITH_DEFCONF= \
		contactfax-${WAPP_VERSION}.${MINOR}-${RPMVER} \
		desktopnotifications-2.0.3.50-78.1 \
		filepreviewer-2.2.0.26-21.6 \
		gmaps-${WAPP_VERSION}.${MINOR}-${RPMVER} \
		intranet-1.0.1.17-64.2 \
		pimfolder-${WAPP_VERSION}.${MINOR}-${RPMVER} \
		titlecounter-${WAPP_VERSION}.${MINOR}-${RPMVER}


PLUGINS=	${PLUGINS_WITH_DEFCONF} \
		htmleditor-minimal-tinymce-1.0.0.13-27.3 \
		htmleditor-quill-1.0.0.84-79.1 \
		folderwidgets-${WAPP_VERSION}.${MINOR}-${RPMVER} \
		quickitems-${WAPP_VERSION}.${MINOR}-${RPMVER}

MINOR=		2765
RPMVER=		1630.1
PKGNAME=	kopano-webapp-${WAPP_VERSION}.${MINOR}

EXTRACT_SUFX=	.noarch.rpm

# https://download.kopano.io/community/webapp%3A/webapp-4.1.2765%2B1630.1.dbabb97-RHEL_7-noarch.tar.gz
.for _dfile in ${PLUGINS}
DISTFILES+=	kopano-webapp-plugin-${_dfile}${EXTRACT_SUFX}
.endfor
DISTFILES+=	kopano-webapp-lang-${WAPP_VERSION}.${MINOR}-${RPMVER}${EXTRACT_SUFX}

DISTFILES+=	kopano-webapp-${WAPP_VERSION}.${MINOR}-${RPMVER}${EXTRACT_SUFX}
DISTFILES+=	kopano-webapp-plugin-files-3.0.0.42-362.1${EXTRACT_SUFX} \
		kopano-webapp-plugin-filesbackend-owncloud-3.0.0.15-115.1${EXTRACT_SUFX} \
		kopano-webapp-plugin-filesbackend-smb-3.0.0.14-82.1${EXTRACT_SUFX}

MASTER_SITES=	http://nerd.hu/distfiles/kopano-webapp/

CATEGORIES=	mail www

MODULES=	lang/php

MODPHP_BUILDDEP=No
MODPHP_RUNDEP=	No

RUN_DEPENDS=	mail/kopano/core,-mapi # php-mapi

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}
PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/kopano-webapp
TINSTDIR=	${TRUEPREFIX}/kopano-webapp

SUBST_VARS=	INSTDIR TINSTDIR

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
