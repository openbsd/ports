# $OpenBSD: Makefile,v 1.37 2017/05/27 13:55:58 ajacoutot Exp $

COMMENT=	controller for Ubiquiti uniFi (AP/routing/switching/voip)

VERSION=	5.4.16
MASTER_SITES=	http://dl.ubnt.com/unifi/${VERSION}/
REL_V=		5.4.16.0

V=		${VERSION:C/-.*//}
DISTFILES=	unifi-$V{UniFi.unix}.zip unifi_sh_api-$V{unifi_sh_api}
EXTRACT_ONLY=	unifi-$V.zip
PKGNAME=	unifi-$V
REVISION=	0

CATEGORIES=	net

HOMEPAGE=	http://wiki.ubnt.com/UniFi_FAQ

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# at least the firmware files are restricted, if not more
PERMIT_PACKAGE_CDROM=	http://www.ubnt.com/eula/
PERMIT_PACKAGE_FTP=	http://www.ubnt.com/eula/
PERMIT_DISTFILES_FTP=	http://www.ubnt.com/eula/

MODULES=	java
MODJAVA_VER=	1.8+
MODJAVA_JRERUN=	yes

RUN_DEPENDS=	databases/mongodb \
		java/javaPathHelper

NO_BUILD=	Yes
NO_TEST=	Yes

WRKDIST=	${WRKDIR}/UniFi
INSTDIR=	${PREFIX}/share/unifi/
SUBST_VARS=	REL_V

post-extract:
	cp ${FULLDISTDIR}/unifi_sh_api-$V ${WRKSRC}/unifi_sh_api

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}{,/backup,/data,/run,/work}
	cp -Rp ${WRKSRC}/* ${INSTDIR}
	ln -fs ${LOCALBASE}/bin/mongod ${INSTDIR}/bin/mongod
	ln -s /var/log/unifi ${INSTDIR}/logs
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} -type f|xargs chmod ${SHAREMODE}
	find ${INSTDIR} -type d|xargs chmod ${DIRMODE}
	${SUBST_CMD} -c -m 555 -o ${BINOWN} -g ${BINGRP} \
		${FILESDIR}/unifi.sh ${PREFIX}/bin/unifi
	ln -s unifi ${PREFIX}/bin/unifi-discover
	rm -f ${INSTDIR}/unifi_sh_api.orig
	rm -rf ${INSTDIR}/lib/native

.include <bsd.port.mk>
