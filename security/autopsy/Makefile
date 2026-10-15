COMMENT=		GUI for The Sleuth Kit and other digital forensics tools

REVISION=		0
VERSION=		4.23.1
GH_ACCOUNT=		sleuthkit
GH_PROJECT=		autopsy
GH_TAGNAME=		autopsy-${VERSION}
DISTNAME=		autopsy-${VERSION}


# versions of some dependencies in ports
SLEUTHKIT_V =	4.15.0
JAVAFX_V =	21.0.11
SQLITE_V =	3.49.1.0

# versions of some deps from bindings/java/ivy.xml
POSTGRES_V =		42.7.5
C3P0_V =		0.12.0
MCHANGE_V =		0.4.0
SBS_V =			1.3
JNA_V =			5.18.1
IVY_V =			2.5.0

# Define the Maven Central master site shortcut
SITES.maven =           https://repo1.maven.org/maven2/

# list taken from: bindings/java/ivy.xml
DISTFILES.maven = \
	{org/postgresql/postgresql/${POSTGRES_V}/}postgresql-${POSTGRES_V}.jar \
	{com/mchange/c3p0/${C3P0_V}/}c3p0-${C3P0_V}.jar \
	{com/mchange/mchange-commons-java/${MCHANGE_V}/}mchange-commons-java-${MCHANGE_V}.jar \
	{com/zaxxer/SparseBitSet/${SBS_V}/}SparseBitSet-${SBS_V}.jar \
	{org/apache/ivy/ivy/${IVY_V}/}ivy-${IVY_V}.jar

SITES.github =		https://raw.githubusercontent.com/binlist/data/master/
DISTFILES.github =	ranges.csv

SITES.ivycache =	https://github.com/buzzdeee/distfiles/raw/refs/heads/main/security/autopsy/
DISTFILES.ivycache =	ivy2-4.23.1.tar.gz

EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

CATEGORIES=		security

HOMEPAGE=		https://www.autopsy.com/

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# Apache2
PERMIT_PACKAGE=	Yes

COMPILER =		base-clang ports-gcc

MODULES=		java
MODJAVA_VER=		21
MODJAVA_BUILD =		ant
MODJAVA_BUILD_TARGET_NAME =	build-zip

BUILD_DEPENDS =		archivers/zip \
			archivers/unzip \
			java/jna
# C/C++ Forensic & Database Libraries
LIB_DEPENDS =		archivers/sevenzipjbinding \
			databases/sqlite-jdbc \
			graphics/opencv,-java \
			graphics/openjfx/21 \
			multimedia/libde265 \
			multimedia/libheif \
			databases/postgresql,-main \
			sysutils/afflib3 \
			security/libewf \
			sysutils/libvhdi \
			sysutils/libvmdk \
			sysutils/libvslvm \
			sysutils/sleuthkit

# Runtime applications and GStreamer pipelines
RUN_DEPENDS =		security/yara/python \
			sysutils/py-prefetch-parser \
			sysutils/testdisk \
			java/jna \
			multimedia/gstreamer1/plugins-base \
			multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-bad \
			multimedia/gstreamer1/plugins-ugly

IVY_CACHE =		${WRKDIR}/.ivy2/cache

MAKE_ENV +=		TSK_HOME="${WRKDIR}/tsk_bindings" \
			ANT_OPTS="-Duser.home=${WRKDIR} \
				-Dskip.download=true \
				-Doffline=true \
				-Divy.mode=local \
				-Divy.use.origin=true \
				-Divy.default.alwaysCheckExactRevision=false \
				-Divy.cache.ttl.default=eternal \
				-Dno.checksum=true \
				-Divy.cache.dir=${IVY_CACHE}" \
			ASSUME_TSK_BUILD_FROM_SOURCE=false

NO_TEST =		Yes

JAR_ARCH =	${MACHINE_ARCH:S/sparc64/sparcv9/}
SUBST_VARS +=   JAR_ARCH MODJAVA_VER JAVAFX_V SQLITE_V DISTDIR FULLDISTDIR
SUBST_VARS +=   JAVA_HOME

post-extract:
	cd ${WRKDIR} && tar -xvzf ${DISTDIR}/${DISTFILES.ivycache}

pre-build:
	# 1. Create temporary directory mappings inside the port's workspace
	mkdir -p ${WRKDIR}/.ant/lib/
	mkdir -p ${WRKDIR}/tsk_bindings/bindings/java/dist/
	mkdir -p ${WRKDIR}/tsk_bindings/bindings/java/lib/
	mkdir -p ${WRKDIR}/tsk_bindings/case-uco/java/dist/
.for jar in ${DISTFILES.maven}
	cp ${DISTDIR}/${jar:C/\{.*\}//} ${WRKDIR}/tsk_bindings/bindings/java/lib/
.endfor
	cp ${TRUEPREFIX}/share/java/classes/sqlite-jdbc.jar \
		${WRKDIR}/tsk_bindings/bindings/java/lib/sqlite-jdbc-${SQLITE_V}.jar
	cp ${TRUEPREFIX}/share/java/classes/jna.jar \
		${WRKDIR}/tsk_bindings/bindings/java/lib/jna-${JNA_V}.jar
	cp ${TRUEPREFIX}/share/java/classes/jna-platform.jar \
		${WRKDIR}/tsk_bindings/bindings/java/lib/jna-platform-${JNA_V}.jar
	
	# 4. Supply the missing JNA dependencies to satisfy the compiler paths
	mkdir -p ${WRKSRC}/CoreLibs/release/modules/ext
	mkdir -p ${WRKSRC}/Core/release/modules/ext
.for jar in ${DISTFILES.maven}
	cp ${DISTDIR}/${jar:C/\{.*\}//} ${WRKSRC}/CoreLibs/release/modules/ext/
	cp ${DISTDIR}/${jar:C/\{.*\}//} ${WRKSRC}/Core/release/modules/ext/
.endfor
	cp ${TRUEPREFIX}/share/java/classes/jna.jar \
		${WRKSRC}/CoreLibs/release/modules/ext/jna-${JNA_V}.jar
	cp ${TRUEPREFIX}/share/java/classes/jna.jar \
		${WRKSRC}/Core/release/modules/ext/jna-${JNA_V}.jar
	cp ${TRUEPREFIX}/share/java/classes/jna-platform.jar \
		${WRKSRC}/CoreLibs/release/modules/ext/jna-platform-${JNA_V}.jar
	cp ${TRUEPREFIX}/share/java/classes/jna-platform.jar \
		${WRKSRC}/Core/release/modules/ext/jna-platform-${JNA_V}.jar
	cp ${DISTDIR}/ivy-${IVY_V}.jar ${WRKDIR}/.ant/lib/ivy.jar

	mkdir -p ${WRKSRC}/Core/src/org/sleuthkit/autopsy/datamodel/
	cp ${DISTDIR}/${DISTFILES.github} \
		${WRKSRC}/Core/src/org/sleuthkit/autopsy/datamodel/

.for mod in base controls fxml graphics media swing web
	cp ${MODJAVA_JAR_DIR}/${MODJAVA_VER}/javafx-${mod}-openbsd.jar \
		${WRKSRC}/CoreLibs/release/modules/ext/javafx-${mod}-${JAVAFX_V}-openbsd.jar
.endfor
	# doesn't seem to be used, and causes lots of noisy exceptions with jdk-21
	rm -f ${WRKSRC}/thirdparty/jai/jai_imageio-1.1.jar


	# 2. Symlink the real system JARs into the expected relative layout structure
	ln -sf ${MODJAVA_JAR_DIR}/sleuthkit.jar \
		${WRKDIR}/tsk_bindings/bindings/java/dist/sleuthkit-${SLEUTHKIT_V}.jar
	ln -sf ${MODJAVA_JAR_DIR}/sleuthkit-caseuco.jar \
		${WRKDIR}/tsk_bindings/case-uco/java/dist/sleuthkit-caseuco-${SLEUTHKIT_V}.jar

	# copy over opencv-*.jar from opencv-java package
	cp ${TRUEPREFIX}/share/java/opencv4/opencv-*.jar \
		 ${WRKSRC}/thirdparty/opencv/ext/opencv-*.jar

	# subst some more stuff
	${SUBST_CMD} ${WRKSRC}/CoreLibs/ivysettings.xml \
		${WRKSRC}/CoreLibs/nbproject/project.properties \
		${WRKSRC}/Tika/nbproject/project.xml \
		${WRKSRC}/Tika/nbproject/project.properties \
		${WRKSRC}/netbeans-plat/15/harness/launchers/app.sh \
		${WRKSRC}/BootstrapIvy.xml \
		${WRKSRC}/Core/build.xml
	# take care of config file
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/autopsy.conf \
		${WRKSRC}/autopsy.conf

do-install:
	mkdir -p ${PREFIX}
	cd ${PREFIX} && \
		unzip ${WRKSRC}/dist/autopsy.zip
	${SUBST_CMD} -m 0755 -c ${FILESDIR}/autopsy \
		${PREFIX}/bin/autopsy
	#chmod 755 ${PREFIX}/bin/autopsy
		
	cp ${WRKSRC}/dist/autopsy-${VERSION}/platform/modules/ext/junit-4.10.jar \
		${PREFIX}/autopsy/platform/modules/ext/
	
	# remove huge chunks of bundled unusable crap 
	rm -rf ${PREFIX}/autopsy/autopsy/gstreamer \
		${PREFIX}/autopsy/autopsy/plaso \
		${PREFIX}/autopsy/autopsy/photorec_exec \
		${PREFIX}/autopsy/autopsy/7-Zip \
		${PREFIX}/autopsy/autopsy/Tesseract-OCR \
		${PREFIX}/autopsy/autopsy/Volatility \
		${PREFIX}/autopsy/autopsy/aLeapp \
		${PREFIX}/autopsy/autopsy/ewfexport_exec \
		${PREFIX}/autopsy/autopsy/iLeapp \
		${PREFIX}/autopsy/autopsy/markmckinnon \
		${PREFIX}/autopsy/autopsy/modules/lib \
		${PREFIX}/autopsy/autopsy/yara \
		${PREFIX}/autopsy/platform/modules/lib
	${INSTALL_DATA} ${WRKSRC}/autopsy.conf \
		${PREFIX}/autopsy/etc/autopsy.conf

.include <bsd.port.mk>
