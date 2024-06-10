BROKEN-sparc64 =	clang problem, probably needs newer binutils

COMMENT =		P2P payment system

GH_ACCOUNT =		bitcoin
GH_PROJECT =		bitcoin
GH_TAGNAME =		v27.0

SHARED_LIBS +=  bitcoinconsensus          6.0 # 0.0
SHARED_LIBS +=  secp256k1                 0.1 # 0.0

CATEGORIES =		net

HOMEPAGE =		https://www.bitcoin.org/

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =		devel/boost

LIB_DEPENDS =		databases/db/v4 \
			databases/sqlite3 \
			devel/libevent2 \
			net/zeromq

USE_GMAKE =		Yes

# C++17
# Undefined reference to boost and db4 with GCC
COMPILER =		base-clang ports-clang

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14
AUTORECONF =		./autogen.sh
CONFIGURE_ARGS +=	--with-incompatible-bdb \
			--with-sqlite=yes \
			--disable-bip70

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include/db4 -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib/db4"

CXXFLAGS +=		-std=c++20

MAKE_FLAGS =		CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"

FLAVORS =		no_x11
FLAVOR ?=

.if ${FLAVOR:Mno_x11}

WANTLIB += ${COMPILER_LIBCXX} c db_cxx event_core event_extra
WANTLIB += event_pthreads m sodium sqlite3 z zmq

CONFIGURE_ARGS +=	--without-gui \
			--with-miniupnpc=no
.else

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Widgets X11 X11-xcb Xau Xdmcp Xext Xfixes Xxf86vm
WANTLIB += c crypto db_cxx dbus-1 double-conversion drm event_core
WANTLIB += event_extra event_pthreads execinfo expat freetype
WANTLIB += glapi glib-2.0 graphite2 gthread-2.0 harfbuzz iconv
WANTLIB += icudata icui18n icuuc intl m miniupnpc natpmp pcre2-16 pcre2-8
WANTLIB += png qrencode sodium sqlite3 ssl xcb xcb-dri2 xcb-dri3
WANTLIB += xcb-glx xcb-present xcb-randr xcb-shm xcb-sync xcb-xfixes
WANTLIB += xshmfence z zmq zstd

MODULES +=		x11/qt5

LIB_DEPENDS +=		archivers/zstd \
			devel/glib2 \
			devel/harfbuzz \
			devel/pcre2 \
			graphics/graphite2 \
			graphics/libqrencode \
			graphics/png \
			math/double-conversion \
			net/miniupnp/libnatpmp \
			net/miniupnp/miniupnpc \
			security/libsodium \
			x11/dbus

CONFIGURE_ARGS +=	--with-gui=qt5

CONFIGURE_ENV +=	LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"
.endif

post-install:
	cd ${WRKBUILD}/src/secp256k1 && \
		${MAKE_PROGRAM} ${MAKE_FLAGS} install
	${INSTALL_DATA_DIR} ${PREFIX}/share/bitcoin
	${INSTALL_SCRIPT} ${WRKDIST}/share/rpcauth/rpcauth.py \
		${PREFIX}/share/bitcoin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bitcoin
	${INSTALL_DATA} ${WRKDIST}/share/examples/bitcoin.conf \
		${PREFIX}/share/examples/bitcoin
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/bitcoin
	${INSTALL_DATA} ${WRKDIST}/contrib/completions/bash/*.bash \
		${PREFIX}/share/bash-completion/completions/bitcoin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bitcoin
	${INSTALL_DATA} ${WRKDIST}/doc/{assets-attribution.md,benchmarking.md} \
		${PREFIX}/share/doc/bitcoin
	${INSTALL_DATA} ${WRKDIST}/doc/{bips.md,dnsseed-policy.md,fuzzing.md} \
		${PREFIX}/share/doc/bitcoin
	${INSTALL_DATA} ${WRKDIST}/doc/{reduce-traffic.md,tor.md} \
		${PREFIX}/share/doc/bitcoin
	${INSTALL_DATA} ${WRKDIST}/doc/translation_process.md \
		${PREFIX}/share/doc/bitcoin
	${INSTALL_DATA} ${WRKDIST}/doc/translation_strings_policy.md \
		${PREFIX}/share/doc/bitcoin

.if ! ${FLAVOR:Mno_x11}
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
.for s in 16 32 64 128 256
	${INSTALL_DATA} ${WRKDIST}/share/pixmaps/bitcoin${s}.png \
		${PREFIX}/share/pixmaps/bitcoin${s}.png
	${INSTALL_DATA} ${WRKDIST}/share/pixmaps/bitcoin${s}.xpm \
		${PREFIX}/share/pixmaps/bitcoin${s}.xpm
.endfor
.endif

.include <bsd.port.mk>

# fix build when ccache is installed but not enabled
.if ${USE_CCACHE:L} != "yes"
CONFIGURE_ARGS +=	--disable-ccache
.endif
