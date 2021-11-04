# $OpenBSD: Makefile,v 1.23 2021/11/04 17:27:18 robert Exp $

COMMENT=	next generation web interface for Kopano

WAPP_VERSION=	6.0.0

PLUGINS_WITH_DEFCONF= \
		contactfax-${WAPP_VERSION}.${MINOR}-${RPMVER} \
		gmaps-${WAPP_VERSION}.${MINOR}-${RPMVER} \
		pimfolder-${WAPP_VERSION}.${MINOR}-${RPMVER}


PLUGINS=	${PLUGINS_WITH_DEFCONF} \
		htmleditor-jodit-0.2.0.24-70.1 \
		htmleditor-minimal-tinymce-2.0.0-34.20

MINOR=		57
RPMVER=		2026.7
PKGNAME=	kopano-webapp-${WAPP_VERSION}.${MINOR}

EXTRACT_SUFX=	.noarch.rpm

# https://download.kopano.io/community/webapp%3A/webapp-4.1.2765%2B1630.1.dbabb97-RHEL_7-noarch.tar.gz
.for _dfile in ${PLUGINS}
DISTFILES+=	kopano-webapp-plugin-${_dfile}${EXTRACT_SUFX}
.endfor
DISTFILES+=	kopano-webapp-lang-${WAPP_VERSION}.${MINOR}-${RPMVER}${EXTRACT_SUFX}

DISTFILES+=	kopano-webapp-${WAPP_VERSION}.${MINOR}-${RPMVER}${EXTRACT_SUFX}
DISTFILES+=	kopano-webapp-plugin-files-4.0.1.7-451.19${EXTRACT_SUFX} \
		kopano-webapp-plugin-filesbackend-owncloud-4.0.0.0-129.21${EXTRACT_SUFX} \
		kopano-webapp-plugin-filesbackend-smb-4.0.0.0-98.20${EXTRACT_SUFX}

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
