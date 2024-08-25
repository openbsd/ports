COMMENT =	WebRTC compatible video router for jitsi

CATEGORIES =	net

VERSION =	2.0.9646
DISTNAME =	jitsi-videobridge-${VERSION}

GH_ACCOUNT =	jitsi
GH_PROJECT =	jitsi-videobridge
GH_COMMIT =	97a1f15bc5f396c417b3550ced3cbedf54bf4c3b

DISTFILES +=	${GH_DISTFILE}

# vendor maven dependencies
SITES.maven =	https://files.bsd.ac/openbsd-distfiles/
DISTFILES.maven +=	jitsi-videobridge-deps-${VERSION}.tgz

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

post-build:
	cd ${WRKDIR} && \
		tar czf jitsi-videobridge-deps-${VERSION}.tgz m2

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin ${PREFIX}/share/jvb/lib/ ${MODJAVA_JAR_DIR}
	${SUBST_PROGRAM} ${FILESDIR}/jvb.sh ${PREFIX}/bin/jvb
	${SUBST_DATA} ${FILESDIR}/jvb.in.sh ${PREFIX}/share/jvb/jvb.in.sh.sample \
	    ${FILESDIR}/jvb.conf ${PREFIX}/share/jvb/jvb.conf.sample \
	    ${FILESDIR}/sip-communicator.properties ${PREFIX}/share/jvb/lib/sip-communicator.properties.sample
	${INSTALL_DATA} ${WRKSRC}/jvb/lib/logging.properties ${PREFIX}/share/jvb/lib/logging.properties.sample
	${INSTALL_DATA} ${WRKSRC}/jvb/target/jitsi-videobridge-2.3-SNAPSHOT-jar-with-dependencies.jar ${MODJAVA_JAR_DIR}/jitsi-videobridge.jar

.include <bsd.port.mk>
