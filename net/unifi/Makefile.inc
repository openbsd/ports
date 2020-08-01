# $OpenBSD: Makefile.inc,v 1.16 2020/08/01 11:23:05 sthen Exp $

COMMENT=	controller for Ubiquiti uniFi (wifi/routing/switching/voip)

MASTER_SITES?=	http://dl.ubnt.com/unifi/${V}${BUILD_V:C/^([1-9a-f])/-\1/}/

JAF=		1.1.1
DISTFILES=	unifi-$V{UniFi.unix}.zip \
		unifi_sh_api-$V{unifi_sh_api} \
		snappy-java-${SNAPPY_V}${SNAPPY_S}.jar:0 \
		UBNT-MIB:1 \
		UBNT-UniFi-MIB:1
EXTRACT_ONLY=	unifi-$V.zip
PKGNAME=	unifi-$V

# newer unifi uses newer snappy-java, but upstream stopped distributing
# openbsd .so's. use a locally built one to replace.
MASTER_SITES0=	https://spacehopper.org/mirrors/
MASTER_SITES1=	http://dl.ubnt-ut.com/snmp/

CATEGORIES=	net

HOMEPAGE=	http://wiki.ubnt.com/UniFi_FAQ

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# at least the firmware files are restricted, if not more
PERMIT_PACKAGE=	  https://www.ui.com/eula/
PERMIT_DISTFILES= https://www.ui.com/eula/

MODULES=	java
MODJAVA_VER=	1.8

# mongodb is amd64-only (and even if that weren't the case,
# building snappy-java for i386 is even more of a pain than for amd64)
ONLY_FOR_ARCHS=	amd64

RUN_DEPENDS=	databases/mongodb<3.6.0 \
		java/javaPathHelper

NO_BUILD=	Yes
NO_TEST=	Yes

WRKDIST=	${WRKDIR}/UniFi
INSTDIR=	${PREFIX}/share/unifi/
VERSION?=	$V.0
SUBST_VARS=	VERSION

pre-extract:
.if ${FETCH_PACKAGES:L} == no
	@if ! [ -r ${LOCALBASE}/bin/mongo ]; then echo; \
	    echo "*** To avoid long jdk/mongodb builds, it is recommended that you"; sleep .7; \
	    echo "*** use 'make FETCH_PACKAGES= install' to fetch binary packages"; sleep .7; \
	    echo "*** for the dependencies."; echo; sleep 5; \
	fi
.endif

post-extract:
	@cp ${FULLDISTDIR}/unifi_sh_api-$V ${WRKSRC}/unifi_sh_api

do-configure:
	@if ! [ -r ${WRKSRC}/lib/snappy-java-${SNAPPY_V}.jar ]; then echo "** Version mismatch in snappy-java"; ls -l ${WRKSRC}/lib/snappy-java*; exit 1; fi
	cp ${FULLDISTDIR}/snappy-java-${SNAPPY_V}${SNAPPY_S}.jar ${WRKSRC}/lib/snappy-java-${SNAPPY_V}.jar

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}{,/backup,/data,/run,/work}
	cp -Rp ${WRKSRC}/* ${INSTDIR}
	ln -fs ${LOCALBASE}/bin/mongod ${INSTDIR}/bin/mongod
	ln -s /var/log/unifi ${INSTDIR}/logs
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} -type f -exec chmod ${SHAREMODE} {} +
	find ${INSTDIR} -type d -exec chmod ${DIRMODE} {} +
	${SUBST_CMD} -c -m 555 -o ${BINOWN} -g ${BINGRP} \
		${FILESDIR}/unifi.sh ${PREFIX}/bin/unifi
	ln -s unifi ${PREFIX}/bin/unifi-discover
	rm -f ${INSTDIR}/unifi_sh_api.orig
	rm -rf ${INSTDIR}/lib/native
	${INSTALL_DATA_DIR} ${PREFIX}/share/snmp/mibs/
	${INSTALL_DATA} ${FULLDISTDIR}/UBNT-{UniFi-,}MIB \
		${PREFIX}/share/snmp/mibs/

