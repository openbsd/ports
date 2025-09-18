BROKEN-sparc64 =	clang problem, probably needs newer binutils

COMMENT =		P2P payment system

V =			29.1

DISTNAME =		bitcoin-${V}

SITES =			https://bitcoincore.org/bin/bitcoin-core-${V}/

CATEGORIES =		net

HOMEPAGE =		https://www.bitcoin.org/

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/boost

LIB_DEPENDS =		databases/sqlite3 \
			devel/libevent2 \
			net/zeromq

# C++20
# Undefined reference to boost and db4 with GCC
COMPILER =		base-clang ports-clang

FLAVORS =		no_x11
FLAVOR ?=

WANTLIB += ${COMPILER_LIBCXX} c event_core event_extra event_pthreads
WANTLIB += m sqlite3 zmq

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Python3=ON

CONFIGURE_ARGS +=	-DWITH_ZMQ=ON

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS +=	-DBUILD_GUI=OFF
.else
WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Widgets
WANTLIB += qrencode

MODULES +=		x11/qt5

LIB_DEPENDS +=		graphics/libqrencode

CONFIGURE_ARGS +=	-DBUILD_GUI=ON
.endif

post-install:
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
CONFIGURE_ARGS +=	-DWITH_CCACHE=OFF
.endif
