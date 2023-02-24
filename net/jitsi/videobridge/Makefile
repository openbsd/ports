COMMENT =	WebRTC compatible video router for jitsi

CATEGORIES =	net

VERSION =	2.0.8044
REVISION =	0
DISTNAME =	jitsi-videobridge-${VERSION}

GH_ACCOUNT =	jitsi
GH_PROJECT =	jitsi-videobridge
GH_COMMIT =	98c9f868414abfe2cf2a92d16ecff526fe9a06b6

DISTFILES +=	${GH_DISTFILE}

# vendor maven dependencies
MASTER_SITES7 =	https://files.bsd.ac/openbsd-distfiles/
DISTFILES +=	jitsi-videobridge-deps-${VERSION}.tgz:7

MAINTAINER =	Philipp Buehler <pb-openbsd@sysfive.com>, \
		Aisha Tammy <aisha@openbsd.org>
# Apache-2.0
PERMIT_PACKAGE =	Yes

NO_TEST =	Yes

MODULES =	java
MODJAVA_VER =	11

BUILD_DEPENDS =	devel/maven

RUN_DEPENDS =	java/javaPathHelper \
		net/jitsi/srtp

MAVEN_ARGS=	--offline -PbuildFatJar -DskipTests -Dassembly.skipAssembly=false
MAVEN_REPO=	-Dmaven.repo.local=${WRKDIR}/m2

do-build:
	cd ${WRKSRC} && \
		${SETENV} ${MAKE_ENV} mvn ${MAVEN_REPO} ${MAVEN_ARGS} package

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin ${PREFIX}/share/jvb/lib/ ${MODJAVA_JAR_DIR}
	${SUBST_PROGRAM} ${FILESDIR}/jvb.sh ${PREFIX}/bin/jvb
	${SUBST_DATA} ${FILESDIR}/jvb.in.sh ${PREFIX}/share/jvb/jvb.in.sh.sample \
	    ${FILESDIR}/jvb.conf ${PREFIX}/share/jvb/jvb.conf.sample \
	    ${FILESDIR}/sip-communicator.properties ${PREFIX}/share/jvb/lib/sip-communicator.properties.sample
	${INSTALL_DATA} ${WRKSRC}/jvb/lib/logging.properties ${PREFIX}/share/jvb/lib/logging.properties.sample
	${INSTALL_DATA} ${WRKSRC}/jvb/target/jitsi-videobridge-2.1-SNAPSHOT-jar-with-dependencies.jar ${MODJAVA_JAR_DIR}/jitsi-videobridge.jar

.include <bsd.port.mk>
