.if defined(V)
COMMENT =	controller for Ubiquiti uniFi (wifi/routing/switching/voip)

_BV =		${BUILD_V:C/^http[^-]*-([0-9a-f]{10}).*/-\1/}
SITES ?=	https://dl.ui.com/unifi/${V}${_BV}/
DISTFILES =	unifi-$V{UniFi.unix}.zip \
		unifi_sh_api-$V{unifi_sh_api}

SITES.sh =	https://spacehopper.org/mirrors/

LOG4J_V =	2.17.1
SITES.log4j =	${SITE_APACHE:=logging/log4j/${LOG4J_V}/}

COMMONSTEXT_V =	1.10.0
SITES.commons =	${SITE_APACHE:=commons/text/binaries/}

SITES.snmp =	https://dl.ubnt-ut.com/snmp/
DISTFILES.snmp = UBNT-MIB UBNT-UniFi-MIB

EXTRACT_ONLY =	unifi-$V.zip
PKGNAME =	unifi-$V

# unifi requires the native library component of snappy-java,
# upstream doesn't include an openbsd version; use a locally built
# one to replace.
#
# typical symptom of failure: APs stuck in "adopting".
SNAPPY_S ?=	-libc++.9.0
DISTFILES.sh +=	snappy-java-${SNAPPY_V}${SNAPPY_S}.jar

REPLACE_LOG4J ?= No
.if ${REPLACE_LOG4J} == Yes
DISTFILES.log4j += apache-log4j-${LOG4J_V}-bin.tar.gz
EXTRACT_ONLY +=	apache-log4j-${LOG4J_V}-bin.tar.gz
.endif
REPLACE_COMMONSTEXT ?= No
.if ${REPLACE_COMMONSTEXT} == Yes
DISTFILES.commons += commons-text-${COMMONSTEXT_V}-bin.tar.gz
EXTRACT_ONLY +=	commons-text-${COMMONSTEXT_V}-bin.tar.gz
.endif

CATEGORIES =	net

MAINTAINER =	Stuart Henderson <stu.ports@spacehopper.org>

# at least the firmware files are restricted, if not more
PERMIT_PACKAGE =   https://www.ui.com/eula/
PERMIT_DISTFILES = https://www.ui.com/eula/

MODULES =	java
MODJAVA_VER ?=	1.8

# mongodb is amd64-only (and even if that weren't the case,
# building snappy-java for i386 is even more of a pain than for amd64)
ONLY_FOR_ARCHS =	amd64

RUN_DEPENDS =	java/javaPathHelper

MONGODB_VER ?=	44
.if ${MONGODB_VER} == 36
# <=3.6 only
RUN_DEPENDS +=	mongodb-<3.7:databases/mongodb/${MONGODB_VER}
.elif ${MONGODB_VER} == 44
# permit any, prefer 44 for new installs
RUN_DEPENDS +=	mongodb-*:databases/mongodb/${MONGODB_VER}
.else
ERRORS +=	Fatal: bad MONGODB_VER
.endif
# disable dup file check, embedded version numbers in PLISTs result
# in many changes for each update resulting in burning cpu on all
# cores for many minutes at a time while pkglocate runs.
UPDATE_PLIST_ARGS = -F

NO_BUILD =	Yes
NO_TEST =	Yes

WRKDIST =	${WRKDIR}/UniFi
INSTDIR =	${PREFIX}/share/unifi/
VERSION ?=	$V.0
SUBST_VARS +=	VERSION LOG4J_V SNAPPY_S SNAPPY_V

pre-extract:
.if ${FETCH_PACKAGES:L} == no
	@needpkgs=false; \
	if ! [ -r ${LOCALBASE}/bin/mongo ]; then needpkgs=true; echo "- mongodb not installed"; fi; \
	if ! [ -r ${LOCALBASE}/jdk-${MODJAVA_VER}*/bin/java ]; then needpkgs=true; echo "- jdk-${MODJAVA_VER} not installed"; fi; \
	if $$$needpkgs; then \
	    echo "*** To avoid long jdk/mongodb builds, it is recommended that you"; sleep .7; \
	    echo "*** use 'make FETCH_PACKAGES= install' to fetch binary packages"; sleep .7; \
	    echo "*** for the dependencies. Hit ^C now to interrupt the build."; echo; sleep 3; \
	fi
.endif

post-extract:
	@cp ${FULLDISTDIR}/unifi_sh_api-$V ${WRKSRC}/unifi_sh_api

do-configure:
	@cd ${WRKSRC}/lib; echo \
	    "** Overriding `echo snappy-java-*.jar` from upstream for ${SNAPPY_V}${SNAPPY_S}"; \
	if ! [ -r ${WRKSRC}/lib/snappy-java-${SNAPPY_V}.jar ]; then \
	    ln -fs snappy-java-${SNAPPY_V}${SNAPPY_S}.jar \
		${WRKSRC}/lib/snappy-java-*.jar; \
	fi
	@cp ${FULLDISTDIR}/snappy-java-${SNAPPY_V}${SNAPPY_S}.jar ${WRKSRC}/lib
	@cd ${WRKSRC}; ls -l lib/snappy-java*; echo
.if ${REPLACE_LOG4J} == Yes
	@echo "** Overriding vulnerable log4j versions"; echo
.  for l4j_comp in log4j-api log4j-core log4j-slf4j-impl
	@ln -fs ${l4j_comp}-${LOG4J_V}.jar ${WRKSRC}/lib/${l4j_comp}-*jar
	@${INSTALL_DATA} ${WRKDIR}/apache-log4j-*/${l4j_comp}-${LOG4J_V}.jar ${WRKSRC}/lib
	@cd ${WRKSRC}; ls -l lib/${l4j_comp}*; echo
.  endfor
.endif
.if ${REPLACE_COMMONSTEXT} == Yes
	@echo "** Overriding vulnerable commons-text version"; echo
	@ln -fs commons-text-${COMMONSTEXT_V}.jar ${WRKSRC}/lib/commons-text-*jar
	@${INSTALL_DATA} ${WRKDIR}/commons-text-*/commons-text-${COMMONSTEXT_V}.jar ${WRKSRC}/lib
	@cd ${WRKSRC}; ls -l lib/commons-text*; echo
.endif

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}{,/backup,/data,/run,/work}
	cp -Rp ${WRKSRC}/* ${INSTDIR}
.if ${V:M5.6*}
	printf '#!/bin/ksh\nexec ${LOCALBASE}/bin/mongod $$(echo $$* | sed -e s/--nohttpinterface//)\n' > ${WRKDIR}/mongod
	${INSTALL_SCRIPT} ${WRKDIR}/mongod ${INSTDIR}/bin/mongod
.else
	ln -fs ${LOCALBASE}/bin/mongod ${INSTDIR}/bin/mongod
.endif
	ln -s /var/log/unifi ${INSTDIR}/logs
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} -type f -exec chmod ${SHAREMODE} {} +
	find ${INSTDIR} -type d -exec chmod ${DIRMODE} {} +
	${SUBST_CMD} -c -m 555 -o ${BINOWN} -g ${BINGRP} \
		${FILESDIR}/unifi.sh ${PREFIX}/bin/unifi
	ln -s unifi ${PREFIX}/bin/unifi-discover
	rm -f ${INSTDIR}/unifi_sh_api${PATCHORIG}
	rm -rf ${INSTDIR}/lib/native
	${INSTALL_DATA_DIR} ${PREFIX}/share/snmp/mibs/
	${INSTALL_DATA} ${FULLDISTDIR}/UBNT-{UniFi-,}MIB \
		${PREFIX}/share/snmp/mibs/
	@echo;echo 'Note: ignore "symlink(s) point to non-existent" warnings during packaging.';echo
.endif
