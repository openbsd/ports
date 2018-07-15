# $OpenBSD: Makefile,v 1.2 2018/07/15 22:03:50 bentley Exp $

COMMENT =		P2P payment system

GH_ACCOUNT =		bitcoin
GH_PROJECT =		bitcoin
GH_TAGNAME =		v0.16.1
REVISION =		0

SHARED_LIBS +=  bitcoinconsensus          0.0 # 0.0
SHARED_LIBS +=  secp256k1                 0.0 # 0.0
SHARED_LIBS +=  univalue                  0.0 # 100.3

CATEGORIES =		net

HOMEPAGE =		https://www.bitcoin.org/

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_chrono-mt boost_filesystem
WANTLIB += boost_program_options-mt boost_system boost_system-mt
WANTLIB += boost_thread-mt c crypto db_cxx event_core event_extra
WANTLIB += event_pthreads m sodium ssl zmq

BUILD_DEPENDS =		${MODGNU_AUTOMAKE_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS} \
			devel/libtool

LIB_DEPENDS =		devel/boost \
			net/zeromq \
			devel/libevent2 \
			databases/db/v4

USE_GMAKE =		Yes

# C++11
# Undefined reference to boost and db4 with GCC
COMPILER =		base-clang ports-clang

CONFIGURE_STYLE =	gnu
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14
CONFIGURE_ARGS +=	--with-incompatible-bdb

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include/db4 -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib/db4"

CXXFLAGS +=		-std=c++11

MAKE_FLAGS =		CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"

FLAVORS =		no_x11 debug
FLAVOR ?=

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	--enable-debug
.endif

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS +=	--without-gui
.else

WANTLIB += GL Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets X11
WANTLIB += X11-xcb Xdamage Xext Xfixes Xxf86vm dbus-1 drm execinfo
WANTLIB += expat freetype glapi glib-2.0 graphite2 gthread-2.0
WANTLIB += harfbuzz iconv icudata icui18n icuuc intl miniupnpc
WANTLIB += pcre pcre2-16 png protobuf qrencode xcb xcb-dri2 xcb-glx
WANTLIB += z

RUN_DEPENDS +=		devel/desktop-file-utils

MODULES +=		x11/qt5

LIB_DEPENDS +=		devel/protobuf \
			graphics/libqrencode \
			net/miniupnp/miniupnpc

CONFIGURE_ARGS +=	--with-gui=qt5

CONFIGURE_ENV +=	LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"
.endif

SUBST_VARS +=		VARBASE

BTCCONTRIBDIR =		${WRKDIST}/contrib/debian

post-patch:
	cd ${WRKSRC} && ${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} ./autogen.sh

post-install:
	cd ${WRKBUILD}/src/secp256k1 && \
		${MAKE_PROGRAM} ${MAKE_FLAGS} install
	cd ${WRKBUILD}/src/univalue && \
		${MAKE_PROGRAM} ${MAKE_FLAGS} install
	${INSTALL_DATA_DIR} ${PREFIX}/share/bitcoin
	${INSTALL_PROGRAM} ${WRKDIST}/share/rpcauth/rpcauth.py \
		${PREFIX}/share/bitcoin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bitcoin
	${INSTALL_DATA} ${BTCCONTRIBDIR}/examples/bitcoin.conf \
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
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -m ${SHAREMODE} -c \
		${BTCCONTRIBDIR}/bitcoin-qt.desktop \
		${PREFIX}/share/applications/bitcoin-qt.desktop
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKDIST}/share/pixmaps/bitcoin128.png \
		${PREFIX}/share/pixmaps/bitcoin128.png
	${INSTALL_DATA} ${WRKDIST}/share/pixmaps/bitcoin128.xpm \
		${PREFIX}/share/pixmaps/bitcoin128.xpm
.endif

.include <bsd.port.mk>

# fix build when ccache is installed but not enabled
.if ${USE_CCACHE:L} != "yes"
CONFIGURE_ARGS +=	--disable-ccache
.endif
