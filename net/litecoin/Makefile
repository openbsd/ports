BROKEN-sparc64 =	clang problem, probably needs newer binutils

COMMENT =		P2P payment system

GH_ACCOUNT =		litecoin-project
GH_PROJECT =		litecoin
GH_TAGNAME =		v0.21.3

SHARED_LIBS +=  bitcoinconsensus          3.0 # 0.0
SHARED_LIBS +=  secp256k1                 0.0 # 0.0
SHARED_LIBS +=  univalue                  0.0 # 100.3

CATEGORIES =		net

HOMEPAGE =		https://litecoin.org

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes


LIB_DEPENDS =		databases/db/v4 \
			databases/sqlite3 \
			devel/boost \
			devel/fmt \
			devel/libevent2 \
			net/zeromq

USE_GMAKE =		Yes

# C++17
# Undefined reference to boost and db4 with GCC
COMPILER =		base-clang ports-clang

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16
AUTORECONF =		./autogen.sh
CONFIGURE_ARGS +=	--with-incompatible-bdb \
			--with-sqlite=yes \
			--disable-bip70

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include/db4 -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib/db4 -L${LOCALBASE}/lib"

MAKE_FLAGS =		CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"

FLAVORS =		no_x11
FLAVOR ?=

.if ${FLAVOR:Mno_x11}

CONFIGURE_ARGS +=	--without-gui \
			--with-miniupnpc=no

WANTLIB += ${COMPILER_LIBCXX} boost_filesystem boost_system boost_thread-mt
WANTLIB += boost_unit_test_framework-mt c crypto db_cxx event_core
WANTLIB += event_extra event_pthreads fmt m sodium sqlite3 z zmq

.else

CONFIGURE_ARGS +=	--with-gui=qt5

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Test Qt5Widgets X11 X11-xcb Xau Xdmcp Xext Xfixes
WANTLIB += Xxf86vm boost_filesystem boost_system boost_thread-mt
WANTLIB += boost_unit_test_framework-mt c crypto db_cxx dbus-1
WANTLIB += double-conversion drm event_core event_extra event_pthreads
WANTLIB += execinfo expat fmt freetype glapi glib-2.0 graphite2
WANTLIB += gthread-2.0 harfbuzz iconv icudata icui18n icuuc intl
WANTLIB += m miniupnpc pcre2-16 pcre2-8 png qrencode sodium sqlite3
WANTLIB += ssl xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-randr
WANTLIB += xcb-shm xcb-sync xcb-xfixes xshmfence z zmq zstd

MODULES +=		x11/qt5

LIB_DEPENDS +=		archivers/zstd \
			devel/pcre2 \
			graphics/libqrencode \
			math/double-conversion \
			net/miniupnp/miniupnpc

CONFIGURE_ENV +=	LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"
.endif

post-install:
	cd ${WRKBUILD}/src/univalue && \
		${MAKE_PROGRAM} ${MAKE_FLAGS} install
	cd ${WRKBUILD}/src/secp256k1-zkp && \
		${MAKE_PROGRAM} ${MAKE_FLAGS} install
	${INSTALL_DATA_DIR} ${PREFIX}/share/litecoin
	${INSTALL_SCRIPT} ${WRKDIST}/share/rpcauth/rpcauth.py \
		${PREFIX}/share/litecoin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/litecoin
	${INSTALL_DATA} ${WRKDIST}/share/examples/litecoin.conf \
		${PREFIX}/share/examples/litecoin
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/litecoin
	${INSTALL_DATA} ${WRKDIST}/contrib/*.bash-completion \
		${PREFIX}/share/bash-completion/completions/litecoin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/litecoin
	${INSTALL_DATA} ${WRKDIST}/doc/{assets-attribution.md,benchmarking.md} \
		${PREFIX}/share/doc/litecoin
	${INSTALL_DATA} ${WRKDIST}/doc/{bips.md,dnsseed-policy.md,fuzzing.md} \
		${PREFIX}/share/doc/litecoin
	${INSTALL_DATA} ${WRKDIST}/doc/{reduce-traffic.md,tor.md} \
		${PREFIX}/share/doc/litecoin
	${INSTALL_DATA} ${WRKDIST}/doc/translation_process.md \
		${PREFIX}/share/doc/litecoin
	${INSTALL_DATA} ${WRKDIST}/doc/translation_strings_policy.md \
		${PREFIX}/share/doc/litecoin

.if ! ${FLAVOR:Mno_x11}
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
.for s in 16 32 64 128 256
	${INSTALL_DATA} ${WRKDIST}/share/pixmaps/bitcoin${s}.png \
		${PREFIX}/share/pixmaps/litecoin${s}.png
	${INSTALL_DATA} ${WRKDIST}/share/pixmaps/bitcoin${s}.xpm \
		${PREFIX}/share/pixmaps/litecoin${s}.xpm
.endfor
.endif

.include <bsd.port.mk>

# fix build when ccache is installed but not enabled
.if ${USE_CCACHE:L} != "yes"
CONFIGURE_ARGS +=	--disable-ccache
.endif
