COMMENT =		historical real-time strategy game

DISTNAME =		0ad-${V}-unix-build
PKGNAME =		0ad-${V}

USE_NOBTCFI =		Yes

SO_VERSION =		0.0
SHARED_LIBS +=		mozjs115-release        ${SO_VERSION}

WANTLIB += ${MODRUST_WANTLIB} ${COMPILER_LIBCXX} SDL2 X11 boost_filesystem
WANTLIB += boost_system crypto curl enet execinfo fmt freetype gloox iconv
WANTLIB += icudata icui18n icuuc idn m miniupnpc ogg openal
WANTLIB += png sodium ssl vorbis vorbisfile wx_gtk3u_gl-3.2 wx_gtk3u_xrc-3.2
WANTLIB += wx_gtk3u_html-3.2 wx_gtk3u_qa-3.2 wx_gtk3u_core-3.2 wx_baseu-3.2
WANTLIB += wx_baseu_net-3.2 wx_baseu_xml-3.2 xml2 z

BUILD_DEPENDS =		archivers/gtar \
			archivers/zip \
			devel/cmake \
			shells/bash \

LIB_DEPENDS =		audio/libogg \
			audio/libvorbis \
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
			textproc/libxml \
			x11/wxWidgets
RUN_DEPENDS =		devel/desktop-file-utils \
			games/0ad/data=${V} \
			x11/wxWidgets
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
			LDFLAGS="-L/usr/local/lib -liconv"

USE_GMAKE =		Yes

# Library build.sh scripts require gtar specific flags.
CONFIGURE_ENV +=	TAR=gtar

# XXX don't use --with-native-mozjs because 0ad needs to stay in sync
# with it: updates to mozjs could break the multiplayer.
CONFIGURE_ARGS +=	-j${MAKE_JOBS} \
			--datadir=${PREFIX}/share/0ad \
			--libdir=${PREFIX}/lib \
			--minimal-flags

WRKSRC =		${WRKDIST}/build/workspaces/gcc

do-build:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python3 # ensure correct version binary is used

	cd ${WRKDIST}/libraries && \
		${SETENV} CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}" SO_VERSION="${SO_VERSION}" \
		${CONFIGURE_ENV} verbose=1 \
		./build-source-libs.sh -j${MAKE_JOBS}

	cd ${WRKDIST}/build/workspaces && \
		${SETENV} CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}" SO_VERSION="${SO_VERSION}" \
		${CONFIGURE_ENV} verbose=1 \
		./update-workspaces.sh ${CONFIGURE_ARGS}

	cd ${WRKSRC} &&\
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
			-f ${MAKE_FILE} ${ALL_TARGET}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/0ad
	cp -R ${WRKDIST}/binaries/data/* ${PREFIX}/share/0ad
	${INSTALL_DATA} ${WRKDIST}/binaries/system/lib*.so* ${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKDIST}/binaries/system/pyrogenesis ${PREFIX}/bin
	${SUBST_PROGRAM} ${WRKDIST}/build/resources/0ad.sh ${PREFIX}/bin/0ad
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKDIST}/build/resources/0ad.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKDIST}/build/resources/0ad.png \
		${PREFIX}/share/pixmaps/

.include <bsd.port.mk>
