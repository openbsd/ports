COMMENT =		forensic toolkit based on TCT

REVISION =		0
VERSION =		4.15.0
DISTNAME =		sleuthkit-${VERSION}

CATEGORIES=		sysutils security

SHARED_LIBS +=		tsk 4.0

HOMEPAGE =		https://www.sleuthkit.org/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# CPLv1 & IBM & GPLv2 & Apache2 & BSD & MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=	bfio c m pthread ${COMPILER_LIBCXX} sqlite3 vhdi vmdk z
WANTLIB +=	afflib aio_compat crypto curl expat nghttp2 nghttp3
WANTLIB +=	ngtcp2 ngtcp2_crypto_libressl readline ssl ewf vslvm

# Define the Maven Central master site shortcut
SITES.maven =		https://repo1.maven.org/maven2/
SITES.uco =		${SITES.maven}

VIJODA =	2.13.1
VIGUAVA =	33.4.0-jre
VIFAILACC =	1.0.2
VICOMMLAN =	3.17.0
VICOMMVAL =	1.9.0
VIGSON =	2.12.1
VIJUNIT =	4.13.2
VIJDU =		4.12
VIPGSQL =	42.7.5
VIC3PO =	0.12.0
VIMCJ =		0.4.0
VISBS =		1.3
VUGSON =	2.8.5
VUJUNIT =	4.12
VUHCC =		1.3


# list taken from: bindings/java/ivy.xml
DISTFILES.maven = \
	{joda-time/joda-time/${VIJODA}/}joda-time-${VIJODA}.jar \
	{com/google/guava/guava/${VIGUAVA}/}guava-${VIGUAVA}.jar \
	{com/google/guava/failureaccess/${VIFAILACC}/}failureaccess-${VIFAILACC}.jar \
	{org/apache/commons/commons-lang3/${VICOMMLAN}/}commons-lang3-${VICOMMLAN}.jar \
	{commons-validator/commons-validator/${VICOMMVAL}/}commons-validator-${VICOMMVAL}.jar \
	{com/google/code/gson/gson/${VIGSON}/}gson-${VIGSON}.jar \
	{junit/junit/${VIJUNIT}/}junit-${VIJUNIT}.jar \
	{io/github/java-diff-utils/java-diff-utils/${VIJDU}/}java-diff-utils-${VIJDU}.jar \
	{org/postgresql/postgresql/${VIPGSQL}/}postgresql-${VIPGSQL}.jar \
	{com/mchange/c3p0/${VIC3PO}/}c3p0-${VIC3PO}.jar \
	{com/mchange/mchange-commons-java/${VIMCJ}/}mchange-commons-java-${VIMCJ}.jar \
	{com/zaxxer/SparseBitSet/${VISBS}/}SparseBitSet-${VISBS}.jar

# list taken from: case-uco/java/ivy.xml and
# case-uco/java/nbproject/project.properties
DISTFILES.uco = \
	{com/google/code/gson/gson/${VUGSON}/}gson-${VUGSON}.jar \
	{junit/junit/${VUJUNIT}/}junit-${VUJUNIT}.jar \
	{org/hamcrest/hamcrest-core/${VUHCC}/}hamcrest-core-${VUHCC}.jar
	

SITES =	https://github.com/sleuthkit/sleuthkit/releases/download/${DISTNAME}/
EXTRACT_ONLY = ${DISTNAME}.tar.gz

MODULES +=              java
MODJAVA_VER =           17+
# not using MODJAVA_BUILD=ant on purpose

COMPILER =		base-clang ports-gcc

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
CONFIGURE_STYLE =	autoreconf
USE_GMAKE =		Yes

BUILD_DEPENDS +=        devel/apache-ant
LIB_DEPENDS =	databases/sqlite3 \
			devel/libbfio \
			sysutils/afflib3 \
			sysutils/libvhdi \
			sysutils/libvmdk \
			sysutils/libvslvm \
			security/libewf
RUN_DEPENDS =	converters/p5-DateManip \
		databases/sqlite-jdbc

CONFIGURE_ARGS += 	--mandir='${PREFIX}/man' \
			--enable-offline \
			--enable-java \
			PATH=${PORTPATH}:${JAVA_HOME}/bin \
			CFLAGS="${CFLAGS} -I${JAVA_HOME}/include/openbsd" \
			CPPFLAGS="${CPPFLAGS} -I${JAVA_HOME}/include/openbsd" \
			CXXFLAGS="${CXXFLAGS} -I${JAVA_HOME}/include/openbsd"


CONFIGURE_ENV =		ac_cv_path_CPPUNIT_CONFIG=no \
			ac_cv_header_postgresql_libpq_fe_h=no

NO_TEST =		Yes
SUBST_VARS +=		VERSION

post-patch:
	${SUBST_CMD} ${WRKSRC}/bindings/java/Makefile.am \
			 ${WRKSRC}/case-uco/java/Makefile.am

pre-configure:
	@sed -i 's:%%PREFIX%%:${PREFIX}:' ${WRKSRC}/man/sorter.1

pre-build:
	mkdir -p ${WRKBUILD}/bindings/java/jni/.libs/
	ln -sf ${WRKBUILD}/bindings/java/jni/.libs/libtsk_jni.so.0.0 \
		${WRKBUILD}/bindings/java/jni/.libs/libtsk_jni.so
	mkdir -p ${WRKBUILD}/bindings/java/lib
.for jar in ${DISTFILES.maven}
	cp ${DISTDIR}/${jar:C/\{.*\}//} ${WRKBUILD}/bindings/java/lib/
.endfor
	cp ${TRUEPREFIX}/share/java/classes/sqlite-jdbc.jar \
		${WRKBUILD}/bindings/java/lib/
	
	mkdir -p ${WRKBUILD}/case-uco/java/lib/
.for jar in ${DISTFILES.uco}
	cp ${DISTDIR}/${jar:C/\{.*\}//} ${WRKBUILD}/case-uco/java/lib/
.endfor


post-install:
	mv ${PREFIX}/bin/pstat ${PREFIX}/bin/pstat.sleuthkit
	mv ${MODJAVA_SHARE_DIR}/classes/sleuthkit-${VERSION}.jar \
		${MODJAVA_SHARE_DIR}/classes/sleuthkit.jar
	mv ${MODJAVA_SHARE_DIR}/classes/sleuthkit-caseuco-${VERSION}.jar \
		${MODJAVA_SHARE_DIR}/classes/sleuthkit-caseuco.jar
	rm -rf ${PREFIX}/lib/libtsk_jni*

.include <bsd.port.mk>
