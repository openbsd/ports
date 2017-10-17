# $OpenBSD: Makefile,v 1.46 2017/10/17 13:02:08 sthen Exp $

COMMENT=	controller for Ubiquiti uniFi (wifi/routing/switching/voip)

# https://community.ubnt.com/t5/UniFi-Updates-Blog/bg-p/Blog_UniFi
# https://community.ubnt.com/t5/UniFi-Beta-Blog/bg-p/Blog_UniFi_Beta
VERSION=	5.6.19
MASTER_SITES=	http://dl.ubnt.com/unifi/${VERSION}-17e4cda571/

V=		${VERSION:C/-.*//}
DISTFILES=	unifi-$V{UniFi.unix}.zip unifi_sh_api-$V{unifi_sh_api}
EXTRACT_ONLY=	unifi-$V.zip
PKGNAME=	unifi-$V

# newer unifi uses newer snappy-java, but upstream stopped distributing
# openbsd .so's. use a locally built one to replace.
MASTER_SITES0=	https://spacehopper.org/mirrors/
DISTFILES+=	snappy-java-1.1.2.6.jar:0

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
SUBST_VARS=	VERSION

post-extract:
	cp ${FULLDISTDIR}/unifi_sh_api-$V ${WRKSRC}/unifi_sh_api
	cp ${FULLDISTDIR}/snappy-java-1.1.2.6.jar ${WRKSRC}/lib/

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
