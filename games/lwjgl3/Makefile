# $OpenBSD: Makefile,v 1.2 2021/02/23 06:13:14 ajacoutot Exp $

COMMENT =	lightweight game library for java

V =		3.2.4alpha1
DISTNAME =	lwjgl3-${V}

KOTLIN_V =	1.3.61

.if ${MACHINE_ARCH} == "i386"
M_ARCH =	""
.elif ${MACHINE_ARCH} == "amd64"
M_ARCH =	64
.endif

LWJGL3_HOME =	${PREFIX}/share/lwjgl3

CATEGORIES =	games devel

HOMEPAGE =	https://lwjgl.org

MAINTAINER =	Kurt Mosiejczuk <kmos@openbsd.org>

COMPILER =	base-clang ports-gcc

EXTRACT_ONLY =	${DISTNAME}.tar.gz

# Build downloads kotlin compiler and libraries from maven if not available

DISTFILES +=	${DISTNAME}.tar.gz \
		kotlin-compiler-${KOTLIN_V}.zip:1 \
		lwjgl3-maven-20210208.tar.gz:2
MASTER_SITES =	\
	https://github.com/kmosiejczuk/lwjgl3/releases/download/${V}/
MASTER_SITES1 =	\
	https://github.com/JetBrains/kotlin/releases/download/v${KOTLIN_V}/
MASTER_SITES2 =	https://filedump.se.rit.edu/pub/distfiles/

# BSD
PERMIT_PACKAGE =	Yes

# GL listed here as it is dlopen()d by the lib
WANTLIB += 	${COMPILER_LIBCXX} GL X11 Xcursor Xext Xrandr Xxf86vm assimp \
		glfw glib-2.0 gobject-2.0 gtk-3 lmdb lz4 m openal \
		opus pthread xxhash

MODULES =	java
MODJAVA_VER =	11
MODJAVA_BUILD =	ant

BUILD_DEPENDS =	archivers/unzip \
		devel/bullet \
		devel/dyncall
LIB_DEPENDS =	archivers/lz4 \
		audio/openal \
		audio/opus \
		databases/lmdb \
		graphics/glfw \
		multimedia/assimp \
		sysutils/xxhash \
		x11/gtk+3

PORTHOME =	${WRKDIR}

NO_TEST =	Yes

SUBST_VARS +=	M_ARCH

post-extract:
	mkdir -p ${WRKSRC}/bin/libs
	unzip -oq -d ${WRKSRC}/bin/libs/ \
		${FULLDISTDIR}/kotlin-compiler-${KOTLIN_V}.zip
	tar -C ${WRKSRC}/bin/libs -zxf \
		${FULLDISTDIR}/lwjgl3-maven-20210208.tar.gz

pre-configure:
	perl -pi -e 's,/usr/X11R6,${X11BASE},g' \
		${WRKSRC}/build.xml
	perl -pi -e 's,/usr/local,${LOCALBASE},g' \
		${WRKSRC}/build.xml
	touch ${WRKSRC}/bin/libs/touch.txt

do-build:
	${MODJAVA_BUILD_TARGET}
	cd ${MODJAVA_BUILD_DIR} && \
		${SETENV} ${MAKE_ENV} LWJGL_BUILD_OFFLINE=true \
		JAVA8_HOME=${LOCALBASE}/jdk-11 ${LOCALBASE}/bin/ant \
		-buildfile ${MODJAVA_BUILD_FILE} release ${MODJAVA_BUILD_ARGS}

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
