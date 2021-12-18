# $OpenBSD: Makefile,v 1.5 2021/12/18 05:40:30 thfr Exp $

COMMENT =		java game development framework
VERSION =		1.9.11
PKGNAME =		libgdx-${VERSION}
REVISION =		2

.if ${MACHINE_ARCH} == "i386"
M_ARCH =
.elif ${MACHINE_ARCH} == "amd64"
M_ARCH =		64
.endif

GH_ACCOUNT =		libgdx
GH_PROJECT =		libgdx
GH_TAGNAME =		gdx-parent-${VERSION}

CATEGORIES =		games
HOMEPAGE =		https://libgdx.badlogicgames.com
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# Apache 2.0. m2repo bundle: Apache 2.0, BSD, LGPL 2.1,
# Eclipse Public License (junit)
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 m

MASTER_SITES0 =		https://thfr.info/distfiles/

DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			m2repo-libgdx-${VERSION}-tools.tar.gz:0

DIST_SUBDIR =		libgdx

# C++
COMPILER =		base-clang ports-gcc base-gcc
MODULES =		java
MODJAVA_VER =		11
MODJAVA_BUILD =		ant
MODJAVA_BUILD_FILE =	build-linux64.xml
BUILD_DEPENDS =		devel/apache-ant \
			devel/maven

PATCHORIG =		.orig.port

# mvn command
# flags: -o: offline
MVN =			mvn -o -Dmaven.repo.local=${WRKDIR}/m2repo-libgdx-${VERSION}-tools package

NO_TEST =		Yes

SUBST_VARS +=		CFLAGS CXXFLAGS M_ARCH

FIX_CRLF_FILES = \
		backends/gdx-backend-lwjgl/src/com/badlogic/gdx/backends/lwjgl/LwjglNativesLoader.java \
		backends/gdx-backend-lwjgl/src/com/badlogic/gdx/backends/lwjgl/audio/OpenALMusic.java \
		extensions/gdx-box2d/gdx-box2d/jni/build-linux64.xml \
		extensions/gdx-controllers/gdx-controllers-desktop/jni/build-linux64.xml \
		extensions/gdx-freetype/jni/build-linux64.xml \
		extensions/gdx-jnigen/src/com/badlogic/gdx/jnigen/JniGenSharedLibraryLoader.java \
		gdx/jni/build-linux64.xml \
		gdx/src/com/badlogic/gdx/scenes/scene2d/utils/UIUtils.java \
		gdx/src/com/badlogic/gdx/utils/SharedLibraryLoader.java

post-extract:
	mkdir ${WRKDIR}/mvnrepo

do-gen:
	${SUBST_CMD} ${WRKSRC}/gdx/jni/build-linux64.xml
	${SUBST_CMD} ${WRKSRC}/extensions/gdx-box2d/gdx-box2d/jni/build-linux64.xml
	${SUBST_CMD} ${WRKSRC}/extensions/gdx-freetype/jni/build-linux64.xml
	${SUBST_CMD} ${WRKSRC}/extensions/gdx-controllers/gdx-controllers-desktop/jni/build-linux64.xml

# order of ${MVN} commands is important - gdx-jnigen, gdx, etc.
do-build:
	cd ${WRKSRC}/gdx/jni && env -i ${MAKE_ENV} ant -f build-linux64.xml
	cd ${WRKSRC}/extensions/gdx-box2d/gdx-box2d/jni \
		&& env -i ${MAKE_ENV} ant -f build-linux64.xml
	cd ${WRKSRC}/extensions/gdx-freetype/jni \
		&& env -i ${MAKE_ENV} ant -f build-linux64.xml
	cd ${WRKSRC}/extensions/gdx-controllers/gdx-controllers-desktop/jni \
		&& env -i ${MAKE_ENV} ant -f build-linux64.xml
	cd ${WRKSRC}/extensions/gdx-jnigen \
		&& env -i ${MAKE_ENV} ${MVN}
	cd ${WRKSRC}/gdx \
		&& env -i ${MAKE_ENV} ${MVN}
	cd ${WRKSRC}/backends/gdx-backend-lwjgl \
		&& env -i ${MAKE_ENV} ${MVN}
	cd ${WRKSRC}/backends/gdx-backend-lwjgl3 \
		&& env -i ${MAKE_ENV} ${MVN}
	cd ${WRKSRC}/extensions/gdx-freetype \
		&& env -i ${MAKE_ENV} ${MVN}
	cd ${WRKSRC}/extensions/gdx-controllers/gdx-controllers \
		&& env -i ${MAKE_ENV} ${MVN}
	cd ${WRKSRC}/extensions/gdx-controllers/gdx-controllers-desktop \
		&& env -i ${MAKE_ENV} ${MVN}
	cd ${WRKSRC}/extensions/gdx-box2d/gdx-box2d \
		&& env -i ${MAKE_ENV} ${MVN}
	cd ${WRKSRC}/extensions/gdx-tools \
		&& env -i ${MAKE_ENV} ${MVN}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/libgdx
	${INSTALL_DATA} ${WRKBUILD}/gdx/libs/openbsd/libgdx${M_ARCH}.so \
		${PREFIX}/share/libgdx/
	${INSTALL_DATA} \
		${WRKBUILD}/extensions/gdx-box2d/gdx-box2d/libs/openbsd/libgdx-box2d${M_ARCH}.so \
		${PREFIX}/share/libgdx/
	${INSTALL_DATA} \
		${WRKBUILD}/extensions/gdx-freetype/libs/openbsd/libgdx-freetype${M_ARCH}.so \
		${PREFIX}/share/libgdx/
	${INSTALL_DATA} \
		${WRKBUILD}/extensions/gdx-controllers/gdx-controllers-desktop/libs/openbsd/libgdx-controllers-desktop${M_ARCH}.so \
		${PREFIX}/share/libgdx/
	cp -R   ${WRKBUILD}/gdx/target/classes/com \
		${WRKBUILD}/backends/gdx-backend-lwjgl/target/classes/com \
		${WRKBUILD}/backends/gdx-backend-lwjgl3/target/classes/com \
		${WRKBUILD}/extensions/gdx-freetype/target/classes/com \
		${WRKBUILD}/extensions/gdx-controllers/gdx-controllers{,-desktop}/target/classes/com \
		${WRKBUILD}/extensions/gdx-box2d/gdx-box2d/target/classes/com \
		${WRKBUILD}/extensions/gdx-tools/target/classes/com \
		${PREFIX}/share/libgdx/
	cp -R	${WRKBUILD}/extensions/gdx-jnigen/target/classes/com/badlogic/gdx/jnigen \
		${PREFIX}/share/libgdx/com/badlogic/gdx/

post-install:
	${SUBST_CMD} -c -m 755 ${FILESDIR}/libgdx-setup.sh ${PREFIX}/bin/libgdx-setup
	${SUBST_CMD} -c -m 755 ${FILESDIR}/libgdx-run.sh ${PREFIX}/bin/libgdx-run

.include <bsd.port.mk>
