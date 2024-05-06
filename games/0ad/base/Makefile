COMMENT =		historical real-time strategy game

DISTNAME =		0ad-${V}-alpha-unix-build
PKGNAME =		0ad-${V}
REVISION =		6

USE_WXNEEDED =		Yes
USE_NOBTCFI =		Yes

SO_VERSION =	0.0
SHARED_LIBS +=  mozjs78-ps-release        ${SO_VERSION}

WANTLIB += ${MODRUST_WANTLIB} ${COMPILER_LIBCXX} SDL2 X11 boost_filesystem
WANTLIB += boost_system crypto curl enet execinfo fmt freetype gloox iconv
WANTLIB += icudata icui18n icuuc idn m miniupnpc ogg openal
WANTLIB += png sodium ssl vorbis vorbisfile xml2 z

BUILD_DEPENDS =		archivers/zip \
			shells/bash
# used offline, to apply binary patch: see
# patch-libraries_source_spidermonkey_mozjs_virtualenv_patch
# patch-libraries_source_spidermonkey_patch_sh
BUILD_DEPENDS +=	devel/git

LIB_DEPENDS =		audio/libvorbis \
			audio/openal \
			converters/libiconv \
			devel/boost \
			devel/fmt \
			devel/sdl2 \
			graphics/png \
			net/curl \
			net/enet \
			net/gloox>=1.0.20 \
			net/miniupnp/miniupnpc \
			security/libsodium \
			textproc/icu4c \
			textproc/libxml
RUN_DEPENDS =		devel/desktop-file-utils \
			games/0ad/data=${V}
MODULES =		lang/python \
			lang/rust

# gnu++17
COMPILER =		base-clang ports-gcc

MODPY_RUNDEP =		No

MAKE_FLAGS =		SILENT=
MAKE_ENV =		CC="${CC}" \
			CXX="${CXX}" \
			CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS} -I${X11BASE}/include" \
			LDFLAGS="-liconv"

FIX_CRLF_FILES =	build/premake/premake5/build/gmake.bsd/Premake5.make

USE_GMAKE =		Yes

# libraries/source/spidermonkey/mozjs-*/python/mach/mach/mixin/process.py
# checks this var and errors out if undefined:
#	Exception: Could not detect environment shell!
CONFIGURE_ENV +=	SHELL=sh

# XXX don't use --with-native-mozjs because 0ad needs to stay in sync
# with it: updates to mozjs could break the multiplayer.
CONFIGURE_ARGS +=	-j${MAKE_JOBS} \
			--without-nvtt \
			--datadir=${PREFIX}/share/0ad \
			--libdir=${PREFIX}/lib \
			--minimal-flags

# XXX atlas (the level editor) requires threaded libxml
CONFIGURE_ARGS +=	--disable-atlas

WRKSRC =		${WRKDIST}/build/workspaces/gcc

# most tests fail without nvtt
CONFIGURE_ARGS +=	--without-tests
# XXX built and packaged even without tests
MAKE_FLAGS +=		mocks_test_config=''

post-extract:
	# remove unused bundled sources
	rm -rf ${WRKSRC}/libraries/source/{cxxtest-4.4,enet,miniupnpc,nvtt,valgrind}

do-build:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python3 # ensure correct version binary is used

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
	${INSTALL_SCRIPT} ${WRKDIST}/build/resources/0ad.sh ${PREFIX}/bin/0ad
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKDIST}/build/resources/0ad.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKDIST}/build/resources/0ad.png \
		${PREFIX}/share/pixmaps/

.include <bsd.port.mk>
