COMMENT =	lightweight game library for java

ONLY_FOR_ARCHS= amd64 aarch64

V =		3.4.1.0
DISTNAME =	lwjgl3-${V}

KOTLIN_V =	2.3.0
MAVEN_V =	20260901

.if ${MACHINE_ARCH} == "aarch64"
MAKE_ENV+=	LWJGL_BUILD_ARCH=arm64
.endif

LWJGL3_HOME =	${PREFIX}/share/lwjgl3

CATEGORIES =	games devel

HOMEPAGE =	https://lwjgl.org

MAINTAINER =	Kurt Mosiejczuk <kmos@openbsd.org>

COMPILER =	base-clang ports-gcc

EXTRACT_ONLY =	${DISTFILES}

# Build downloads kotlin compiler and libraries from maven if not available

DISTFILES =	${DISTNAME}.tar.gz
DISTFILES.c = 	kotlin-compiler-${KOTLIN_V}.zip
DISTFILES.m = 	lwjgl3-maven-${MAVEN_V}.tar.gz
SITES =	  https://github.com/kmosiejczuk/lwjgl3/releases/download/${V}/
SITES.c = https://github.com/JetBrains/kotlin/releases/download/v${KOTLIN_V}/
SITES.m = https://kurt.mosiejcz.uk/pub/distfiles/

# BSD
PERMIT_PACKAGE =	Yes

# Many of these are needed based upon .jar files
WANTLIB=	${COMPILER_LIBCXX} GL GLESv2 assimp c dbus-1 freetype gdk-3 \
		glfw glib-2.0 gobject-2.0 gtk-3 harfbuzz lmdb lz4 m openal \
		opus shaderc_shared spirv-cross-c-shared vulkan xxhash zstd


MODULES =	java
MODJAVA_VER =	25
MODJAVA_BUILD =	ant

BUILD_DEPENDS =	archivers/unzip \
		devel/sdl3 \
		graphics/vulkan-headers
LIB_DEPENDS =	archivers/lz4 \
		archivers/zstd \
		audio/openal \
		audio/opus \
		databases/lmdb \
		devel/harfbuzz \
		devel/glib2 \
		graphics/glfw>=3.5.1 \
		graphics/shaderc \
		graphics/spirv-cross \
		graphics/vulkan-loader \
		multimedia/assimp \
		sysutils/xxhash \
		x11/gtk+3

PORTHOME =	${WRKDIR}

NO_TEST =	Yes

post-extract:
	mkdir -p ${WRKSRC}/bin/libs
	unzip -oq -d ${WRKSRC}/bin/libs/ \
		${FULLDISTDIR}/kotlin-compiler-${KOTLIN_V}.zip
	tar -C ${WRKSRC}/bin/libs -zxf \
		${FULLDISTDIR}/lwjgl3-maven-${MAVEN_V}.tar.gz

pre-configure:
	perl -pi -e 's,/usr/X11R6,${X11BASE},g' \
		${WRKSRC}/build.xml
	perl -pi -e 's,/usr/local,${LOCALBASE},g' \
		${WRKSRC}/build.xml
	touch ${WRKSRC}/bin/libs/touch.txt

do-build:
	cd ${MODJAVA_BUILD_DIR} && \
		${SETENV} ${MAKE_ENV} JAVA8_HOME=${JAVA_HOME} \
		${LOCALBASE}/bin/ant -buildfile ${MODJAVA_BUILD_FILE} \
		compile-templates compile compile-native \
		${MODJAVA_BUILD_ARGS}
	cd ${MODJAVA_BUILD_DIR} && \
		${SETENV} ${MAKE_ENV} LWJGL_BUILD_OFFLINE=true \
		JAVA8_HOME=${JAVA_HOME} ${LOCALBASE}/bin/ant \
		-Djavadoc.skip=true -buildfile ${MODJAVA_BUILD_FILE} \
		release ${MODJAVA_BUILD_ARGS}

do-install:
	${INSTALL_DATA_DIR} ${LWJGL3_HOME}
	rm ${WRKSRC}/bin/RELEASE/lwjgl*/lwjgl-*-sources.jar
	for x in ${WRKSRC}/bin/RELEASE/lwjgl*/*.jar; do \
		${INSTALL_DATA} $$x ${LWJGL3_HOME}/; \
	done
	for x in ${WRKSRC}/bin/RELEASE/lwjgl*/*license.txt; do \
		${INSTALL_DATA} $$x ${LWJGL3_HOME}/; \
	done

.include <bsd.port.mk>
