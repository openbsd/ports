# $OpenBSD: Makefile,v 1.19 2015/12/12 12:54:23 sthen Exp $

COMMENT=	controller for Ubiquiti uniFi (AP/routing/switching/voip)

VERSION=	4.7.6
REVISION=	0

V=		${VERSION:C/-.*//}
DISTFILES=	unifi-$V{UniFi.unix}.zip unifi_sh_api-$V{unifi_sh_api}
EXTRACT_ONLY=	unifi-$V.zip
PKGNAME=	unifi-$V

CATEGORIES=	net

HOMEPAGE=	http://wiki.ubnt.com/UniFi_FAQ

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# at least the firmware files are restricted, if not more
PERMIT_PACKAGE_CDROM=	http://www.ubnt.com/eula/
PERMIT_PACKAGE_FTP=	http://www.ubnt.com/eula/
PERMIT_DISTFILES_FTP=	http://www.ubnt.com/eula/

MASTER_SITES=	http://dl.ubnt.com/unifi/${VERSION}/

MODULES=	java
MODJAVA_VER=	1.6+
MODJAVA_JRERUN=	yes

RUN_DEPENDS=	databases/mongodb \
		java/javaPathHelper

NO_BUILD=	Yes
NO_TEST=	Yes

WRKDIST=	${WRKDIR}/UniFi
INSTDIR=	${PREFIX}/share/unifi/
USG=		4.2.11.4796630
USW=		3.3.11.3850
UAP1=		3.2.12.2920
UAP2=		3.4.8.3291
LIB_V=		lib/$V
SUBST_VARS=	LIB_V USG USW UAP1 UAP2

post-extract:
	cp ${FULLDISTDIR}/unifi_sh_api-$V ${WRKSRC}/unifi_sh_api

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
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

.include <bsd.port.mk>
