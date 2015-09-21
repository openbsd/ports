# $OpenBSD: Makefile,v 1.8 2015/09/21 11:27:08 pascal Exp $

COMMENT =		historical real-time strategy game

DISTNAME =		0ad-${V}-alpha-unix-build
PKGNAME =		0ad-${V}

SO_VERSION =	0.0
SHARED_LIBS +=  mozjs31-ps-release        ${SO_VERSION}

WANTLIB += GL SDL X11 Xcursor boost_filesystem boost_system c curl
WANTLIB += enet execinfo gloox icui18n icuuc jpeg m miniupnpc
WANTLIB += nspr4 ogg openal plc4 plds4 png pthread vorbis vorbisfile
WANTLIB += xml2 z

BUILD_DEPENDS =		archivers/zip \
			shells/bash
LIB_DEPENDS =		audio/libvorbis \
			audio/openal \
			devel/boost \
			devel/libexecinfo \
			devel/nspr \
			devel/sdl \
			graphics/jpeg \
			graphics/png \
			net/curl \
			net/enet \
			net/gloox \
			net/miniupnp/miniupnpc \
			textproc/icu4c \
			textproc/libxml
RUN_DEPENDS =		devel/desktop-file-utils \
			games/0ad/data
MODULES =		lang/python \
			converters/libiconv

# sync with devel/spidermonkey
MODULES +=		gcc4
MODGCC4_ARCHS=		*
MODGCC4_LANGS=		c c++

MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	../../../libraries/source/cxxtest-4.4/bin/cxxtestgen

MAKE_FLAGS =		SILENT=
MAKE_ENV =		CC="${CC}" \
			CXX="${CXX}" \
			CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS}"

PATCHORIG =		.orig.port

USE_GMAKE =		Yes
CONFIGURE_ARGS +=	--without-nvtt \
			--datadir=${PREFIX}/share/0ad \
			--libdir=${PREFIX}/lib \
			--minimal-flags

# XXX atlas (the level editor) requires threaded libxml
CONFIGURE_ARGS +=	--disable-atlas

.if ${MACHINE_ARCH} == "i386"
CFLAGS +=		-march=i586
CXXFLAGS +=		-march=i586
.endif

WRKSRC =		${WRKDIST}/build/workspaces/gcc

do-build:
	cd ${WRKDIST}/build/workspaces && \
		${SETENV} CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}" SO_VERSION="${SO_VERSION}" \
		${CONFIGURE_ENV} verbose=1 \
		./update-workspaces.sh ${CONFIGURE_ARGS}

	cd ${WRKDIST}/libraries/source/fcollada/src && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
			-f ${MAKE_FILE} ${ALL_TARGET}
	cd ${WRKSRC} &&\
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
			-f ${MAKE_FILE} ${ALL_TARGET}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/0ad
	cp -R ${WRKDIST}/binaries/data/* ${PREFIX}/share/0ad
	${INSTALL_DATA} ${WRKDIST}/binaries/system/lib* ${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKDIST}/binaries/system/pyrogenesis ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIST}/build/resources/0ad.sh ${PREFIX}/bin/0ad
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKDIST}/build/resources/0ad.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKDIST}/build/resources/0ad.png \
		${PREFIX}/share/pixmaps/

# most tests fail without nvtt
NO_TEST =		Yes
#do-test:
#	cd ${WRKDIST}/binaries/system && ./test

.include <bsd.port.mk>
