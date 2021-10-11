# $OpenBSD: Makefile,v 1.32 2021/10/11 04:59:07 rsadowski Exp $

BROKEN-sparc64 =	clang problem, probably needs newer binutils

COMMENT =		P2P payment system

GH_ACCOUNT =		bitcoin
GH_PROJECT =		bitcoin
GH_TAGNAME =		v0.21.2

SHARED_LIBS +=  bitcoinconsensus          4.0 # 0.0
SHARED_LIBS +=  secp256k1                 0.1 # 0.0
SHARED_LIBS +=  univalue                  0.0 # 100.3

CATEGORIES =		net

HOMEPAGE =		https://www.bitcoin.org/

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_filesystem boost_system boost_thread-mt
WANTLIB += c db_cxx event_core event_extra event_pthreads m sodium
WANTLIB += sqlite3 z zmq

LIB_DEPENDS =		databases/db/v4 \
			databases/sqlite3 \
			devel/boost \
			devel/libevent2 \
			net/zeromq

USE_GMAKE =		Yes

# C++11
# Undefined reference to boost and db4 with GCC
COMPILER =		base-clang ports-clang

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14
AUTORECONF =		./autogen.sh
CONFIGURE_ARGS +=	--with-incompatible-bdb \
			--disable-bip70

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include/db4 -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib/db4"

CXXFLAGS +=		-std=c++11

MAKE_FLAGS =		CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"

FLAVORS =		no_x11
FLAVOR ?=

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS +=	--without-gui
.else

WANTLIB += GL Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets X11
WANTLIB += X11-xcb Xau Xdmcp Xext Xfixes Xxf86vm crypto dbus-1
WANTLIB += double-conversion drm execinfo expat freetype glapi
WANTLIB += glib-2.0 graphite2 gthread-2.0 harfbuzz iconv icudata
WANTLIB += icui18n icuuc intl miniupnpc pcre pcre2-16 png qrencode
WANTLIB += ssl xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-shm
WANTLIB += xcb-sync xcb-xfixes xshmfence zstd

MODULES +=		x11/qt5

LIB_DEPENDS +=		archivers/zstd \
			graphics/libqrencode \
			math/double-conversion \
			net/miniupnp/miniupnpc

CONFIGURE_ARGS +=	--with-gui=qt5

CONFIGURE_ENV +=	LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"
.endif

SUBST_VARS +=		VARBASE

post-install:
	cd ${WRKBUILD}/src/secp256k1 && \
		${MAKE_PROGRAM} ${MAKE_FLAGS} install
	cd ${WRKBUILD}/src/univalue && \
		${MAKE_PROGRAM} ${MAKE_FLAGS} install
	${INSTALL_DATA_DIR} ${PREFIX}/share/bitcoin
	${INSTALL_SCRIPT} ${WRKDIST}/share/rpcauth/rpcauth.py \
		${PREFIX}/share/bitcoin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bitcoin
	${INSTALL_DATA} ${WRKDIST}/share/examples/bitcoin.conf \
		${PREFIX}/share/examples/bitcoin
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/bitcoin
	${INSTALL_DATA} ${WRKDIST}/contrib/*.bash-completion \
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
