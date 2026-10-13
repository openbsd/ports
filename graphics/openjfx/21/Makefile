COMMENT =		JavaFX/OpenJFX client toolkit

BASE_V =		21.0.11
BASE_REV =		4
V =			${BASE_V}.${BASE_REV}
GH_ACCOUNT =		openjdk
GH_PROJECT =		jfx21u
GH_TAGNAME =		${BASE_V}+${BASE_REV}
PKGNAME =		openjfx-${V}

DISTFILES =		jfx-${V}.tar.gz

# Master Sites
SITES.github =		https://github.com/
SITES.gradle =		https://services.gradle.org/distributions/
SITES.maven =		https://repo1.maven.org/maven2/

# Versions
V_ICU_DATA =		73_1
V_ICU_REL =		release-73-1
V_LUCENE =		7.7.3
V_ANTLR4 =		4.7.2
V_ANTLR3 =		3.5.2
V_TREELAYOUT =		1.0.3
V_ST4 =			4.1
V_JAVAX_JSON =		1.0.4
V_ICU4J =		61.1
V_JUNIT_JUP =		5.8.1
V_JUNIT_PLAT =		1.8.1
V_OPENTEST4J =		1.2.0
V_APIGUARD =		1.1.2

DISTFILES.gradle =	gradle-8.4-bin.zip
# GitHub Downloads
DISTFILES.github = \
	{unicode-org/icu/releases/download/${V_ICU_REL}/}icu4c-${V_ICU_DATA}-data-bin-l.zip

# Maven Central Downloads (POMs and JARs)
DISTFILES.maven = \
	{org/apache/lucene/lucene-core/${V_LUCENE}/}lucene-core-${V_LUCENE}.pom \
	{org/apache/lucene/lucene-queryparser/${V_LUCENE}/}lucene-queryparser-${V_LUCENE}.pom \
	{org/apache/lucene/lucene-grouping/${V_LUCENE}/}lucene-grouping-${V_LUCENE}.pom \
	{org/apache/lucene/lucene-parent/${V_LUCENE}/}lucene-parent-${V_LUCENE}.pom \
	{org/apache/lucene/lucene-solr-grandparent/${V_LUCENE}/}lucene-solr-grandparent-${V_LUCENE}.pom \
	{org/apache/lucene/lucene-queries/${V_LUCENE}/}lucene-queries-${V_LUCENE}.pom \
	{org/apache/lucene/lucene-sandbox/${V_LUCENE}/}lucene-sandbox-${V_LUCENE}.pom \
	{org/apache/lucene/lucene-queryparser/${V_LUCENE}/}lucene-queryparser-${V_LUCENE}.jar \
	{org/apache/lucene/lucene-core/${V_LUCENE}/}lucene-core-${V_LUCENE}.jar \
	{org/apache/lucene/lucene-queries/${V_LUCENE}/}lucene-queries-${V_LUCENE}.jar \
	{org/apache/lucene/lucene-grouping/${V_LUCENE}/}lucene-grouping-${V_LUCENE}.jar \
	{org/apache/lucene/lucene-sandbox/${V_LUCENE}/}lucene-sandbox-${V_LUCENE}.jar \
	{org/antlr/antlr4/${V_ANTLR4}/}antlr4-${V_ANTLR4}.pom \
	{org/antlr/antlr4-master/${V_ANTLR4}/}antlr4-master-${V_ANTLR4}.pom \
	{org/antlr/antlr-runtime/${V_ANTLR3}/}antlr-runtime-${V_ANTLR3}.pom \
	{org/abego/treelayout/org.abego.treelayout.core/${V_TREELAYOUT}/}org.abego.treelayout.core-${V_TREELAYOUT}.pom \
	{org/antlr/antlr4-runtime/${V_ANTLR4}/}antlr4-runtime-${V_ANTLR4}.pom \
	{org/antlr/antlr-master/${V_ANTLR3}/}antlr-master-${V_ANTLR3}.pom \
	{org/antlr/ST4/${V_ST4}/}ST4-${V_ST4}.pom \
	{org/glassfish/javax.json/${V_JAVAX_JSON}/}javax.json-${V_JAVAX_JSON}.pom \
	{com/ibm/icu/icu4j/${V_ICU4J}/}icu4j-${V_ICU4J}.pom \
	{org/glassfish/json/${V_JAVAX_JSON}/}json-${V_JAVAX_JSON}.pom \
	{org/antlr/antlr-runtime/${V_ANTLR3}/}antlr-runtime-${V_ANTLR3}.jar \
	{org/antlr/antlr4/${V_ANTLR4}/}antlr4-${V_ANTLR4}-complete.jar \
	{org/antlr/antlr4-runtime/${V_ANTLR4}/}antlr4-runtime-${V_ANTLR4}.jar \
	{org/antlr/ST4/${V_ST4}/}ST4-${V_ST4}.jar \
	{org/abego/treelayout/org.abego.treelayout.core/${V_TREELAYOUT}/}org.abego.treelayout.core-${V_TREELAYOUT}.jar \
	{org/glassfish/javax.json/${V_JAVAX_JSON}/}javax.json-${V_JAVAX_JSON}.jar \
	{com/ibm/icu/icu4j/${V_ICU4J}/}icu4j-${V_ICU4J}.jar \
	{org/junit/jupiter/junit-jupiter/${V_JUNIT_JUP}/}junit-jupiter-${V_JUNIT_JUP}.pom \
	{org/junit/jupiter/junit-jupiter/${V_JUNIT_JUP}/}junit-jupiter-${V_JUNIT_JUP}.jar \
	{org/junit/jupiter/junit-jupiter-api/${V_JUNIT_JUP}/}junit-jupiter-api-${V_JUNIT_JUP}.pom \
	{org/junit/jupiter/junit-jupiter-api/${V_JUNIT_JUP}/}junit-jupiter-api-${V_JUNIT_JUP}.jar \
	{org/junit/jupiter/junit-jupiter-params/${V_JUNIT_JUP}/}junit-jupiter-params-${V_JUNIT_JUP}.pom \
	{org/junit/jupiter/junit-jupiter-params/${V_JUNIT_JUP}/}junit-jupiter-params-${V_JUNIT_JUP}.jar \
	{org/junit/jupiter/junit-jupiter-engine/${V_JUNIT_JUP}/}junit-jupiter-engine-${V_JUNIT_JUP}.pom \
	{org/junit/jupiter/junit-jupiter-engine/${V_JUNIT_JUP}/}junit-jupiter-engine-${V_JUNIT_JUP}.jar \
	{org/junit/vintage/junit-vintage-engine/${V_JUNIT_JUP}/}junit-vintage-engine-${V_JUNIT_JUP}.pom \
	{org/junit/vintage/junit-vintage-engine/${V_JUNIT_JUP}/}junit-vintage-engine-${V_JUNIT_JUP}.jar \
	{org/junit/platform/junit-platform-commons/${V_JUNIT_PLAT}/}junit-platform-commons-${V_JUNIT_PLAT}.pom \
	{org/junit/platform/junit-platform-commons/${V_JUNIT_PLAT}/}junit-platform-commons-${V_JUNIT_PLAT}.jar \
	{org/junit/platform/junit-platform-engine/${V_JUNIT_PLAT}/}junit-platform-engine-${V_JUNIT_PLAT}.pom \
	{org/junit/platform/junit-platform-engine/${V_JUNIT_PLAT}/}junit-platform-engine-${V_JUNIT_PLAT}.jar \
	{org/opentest4j/opentest4j/${V_OPENTEST4J}/}opentest4j-${V_OPENTEST4J}.pom \
	{org/opentest4j/opentest4j/${V_OPENTEST4J}/}opentest4j-${V_OPENTEST4J}.jar \
	{org/apiguardian/apiguardian-api/${V_APIGUARD}/}apiguardian-api-${V_APIGUARD}.pom \
	{org/apiguardian/apiguardian-api/${V_APIGUARD}/}apiguardian-api-${V_APIGUARD}.jar

EXTRACT_ONLY =	${DISTFILES}

CATEGORIES =		graphics
HOMEPAGE =		https://openjfx.io/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2 + Classpath Exception
PERMIT_PACKAGE =	Yes

MODULES =		java devel/cmake
MODJAVA_VER =		21

BUILD_DEPENDS =		archivers/zip \
			devel/apache-ant \
			devel/gperf \
			devel/ninja \
			lang/ruby/4.0

LIB_DEPENDS =		\
			audio/pulseaudio \
			x11/gtk+3 \

# OpenJFX uses Gradle internally
USE_GMAKE =		Yes

WRKDIST =		${WRKDIR}/jfx21u-${BASE_V}-${BASE_REV}

CONFIGURE_STYLE =	none
SUBST_VARS =		BASE_V FULLDISTDIR

GRADLE_ENV +=		GRADLE_USER_HOME=${WRKDIR}/.gradle \
			JAVA_HOME=${JAVA_HOME}

GRADLE_ARGS =		--no-daemon \
			--offline \
			--init-script=${WRKDIR}/init.gradle \
			--info

.if ${MACHINE_ARCH} == "i386"
GRADLE_ARGS +=		-PNUM_COMPILE_THREADS=1
.endif

post-extract:
	cp ${FILESDIR}/openbsd.gradle \
		${WRKSRC}/buildSrc
	mkdir -p ${WRKDIR}/.gradle/wrapper/dists
	cp ${DISTDIR}/${DISTFILES.gradle} ${WRKDIR}/.gradle/wrapper/dists/
	printf 'allprojects {\n  repositories {\n    clear()\n    flatDir { dirs "%s" }\n  }\n}\n' \
		"${DISTDIR}" > ${WRKDIR}/init.gradle
	cp ${DISTDIR}/${DISTFILES.gradle} ${WRKDIR}/.gradle/wrapper/dists

pre-build:
	${SUBST_CMD} ${WRKSRC}/gradle/wrapper/gradle-wrapper.properties
	chmod 755 ${WRKSRC}/gradlew

do-build:
	cd ${WRKSRC} && ${SETENV} ${GRADLE_ENV} ./gradlew ${GRADLE_ARGS} \
	        -PCOMPILE_TARGETS=openbsd \
	        -PCONF=Release \
	        sdk

pre-test:
	cd ${WRKSRC} && ${SETENV} ${GRADLE_ENV} ./gradlew ${GRADLE_ARGS} \
	        shims

do-test:
	cd ${WRKSRC} && ${SETENV} ${GRADLE_ENV} ./gradlew ${GRADLE_ARGS} \
	        --continue \
	        -PTEST_ONLY=true \
	        test -x :web:test

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR}/${MODJAVA_VER}

	# Copy the main platform-neutral jars                                 
.for mod in base controls fxml graphics media swing web
	${INSTALL_DATA} ${WRKSRC}/build/publications/javafx.${mod}.jar \
		${MODJAVA_JAR_DIR}/${MODJAVA_VER}/javafx-${mod}.jar
.endfor

	# Copy the OpenBSD native library jars 
.for mod in base controls fxml graphics media swing web
	${INSTALL_DATA} ${WRKSRC}/build/publications/javafx.${mod}-openbsd.jar \
		${MODJAVA_JAR_DIR}/${MODJAVA_VER}/javafx-${mod}-openbsd.jar
.endfor

.include <bsd.port.mk>
