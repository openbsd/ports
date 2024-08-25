COMMENT =	server-side focus component used in Jitsi Meet conferences

CATEGORIES =	net

VERSION =	2.0.9646
PKGNAME =	jicofo-${VERSION}

GH_ACCOUNT =	jitsi
GH_PROJECT =	jicofo
GH_TAGNAME =	jitsi-meet_9646

DISTFILES +=	${GH_DISTFILE}

# vendor maven dependencies
SITES.maven =	https://files.bsd.ac/openbsd-distfiles/
DISTFILES.maven +=	jicofo-deps-${VERSION}.tgz

MAINTAINER =	Philipp Buehler <pb-openbsd@sysfive.com>, \
		Aisha Tammy <aisha@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE =	Yes

NO_TEST =	Yes

MODULES =	java
MODJAVA_VER =	11

BUILD_DEPENDS =	devel/maven

RUN_DEPENDS =	java/javaPathHelper

MAVEN_ARGS=	--offline -DskipTests -Dassembly.skipAssembly=false
MAVEN_REPO=	-Dmaven.repo.local=${WRKDIR}/m2

do-build:
	cd ${WRKSRC} && \
		${SETENV} ${MAKE_ENV} mvn ${MAVEN_REPO} ${MAVEN_ARGS} package

post-build:
	cd ${WRKDIR} && \
		tar czf jicofo-deps-${VERSION}.tgz m2

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin ${PREFIX}/share/jicofo/lib ${MODJAVA_JAR_DIR}
	${SUBST_PROGRAM} ${FILESDIR}/jicofo.sh ${PREFIX}/bin/jicofo
	${SUBST_DATA} ${FILESDIR}/jicofo.in.sh ${PREFIX}/share/jicofo/jicofo.in.sh.sample \
	    ${FILESDIR}/jicofo.conf ${PREFIX}/share/jicofo/jicofo.conf.sample
	${INSTALL_DATA} ${WRKSRC}/lib/logging.properties \
	    ${PREFIX}/share/jicofo/lib/logging.properties.sample
	${INSTALL_DATA} ${WRKSRC}/jicofo/target/jicofo-1.1-SNAPSHOT-jar-with-dependencies.jar ${MODJAVA_JAR_DIR}/jicofo.jar

.include <bsd.port.mk>
