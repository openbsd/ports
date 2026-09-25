COMMENT =	jdbc driver for SQLite

VERSION = 	3.53.4.0
SQLITE_SRC_V =	3530400
SLF4J_V =	1.7.36
MVM_DEPS_V =	20260924

GH_ACCOUNT =	xerial
GH_PROJECT =	sqlite-jdbc
GH_TAGNAME =	${VERSION}

CATEGORIES =	databases

# Apache v2
PERMIT_PACKAGE =	Yes

DISTFILES.mvn =		sqlite-jdbc-mvn-deps-${MVM_DEPS_V}.tgz
DISTFILES.sqlite =	sqlite-src-${SQLITE_SRC_V}.zip
DISTFILES.slf4j =	slf4j-api-${SLF4J_V}.jar

SITES.mvn =	https://www.intricatesoftware.com/distfiles/
SITES.sqlite =	https://www.sqlite.org/2026/
SITES.slf4j =	https://repo1.maven.org/maven2/org/slf4j/slf4j-api/${SLF4J_V}/

EXTRACT_ONLY =	${DISTFILES} ${DISTFILES.mvn}

# libsqlitejdbc.so inside the jar needs these, Ignore Extra
WANTLIB =	m pthread

MODULES =	java
MODJAVA_VER =	11+

BUILD_DEPENDS =	archivers/zip \
		archivers/unzip \
		devel/maven \
		shells/bash

USE_GMAKE =	Yes

MAKE_ENV =	CCACHE=none
MAKE_FLAGS =	CC="${CC}"
ALL_TARGET =	native

MAVEN_ARGS =	-Dmaven.repo.local=${WRKDIR}/m2 \
		--offline

post-extract:
	mkdir -p ${WRKSRC}/target/classpath
	cp ${FULLDISTDIR}/${DISTFILES.sqlite} \
	    ${WRKSRC}/target/sqlite-${VERSION:S/.0$//}-src.zip
	cp ${FULLDISTDIR}/${DISTFILES.slf4j} \
	    ${WRKSRC}/target/classpath/slf4j-api.jar
	cd ${WRKSRC} && \
	    rm -rf src/main/resources/org/sqlite/native

post-build:
	@cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} mvn ${MAVEN_ARGS} -DskipTests package

do-test:
	@cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} mvn ${MAVEN_ARGS} test

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR}
	${INSTALL_DATA} ${WRKSRC}/target/sqlite-jdbc-${VERSION}.jar \
	    ${MODJAVA_JAR_DIR}/sqlite-jdbc.jar

.include <bsd.port.mk>
