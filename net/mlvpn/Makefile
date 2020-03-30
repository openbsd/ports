# $OpenBSD: Makefile,v 1.10 2020/03/30 13:19:06 sthen Exp $

COMMENT =		link-aggregation VPN software

V =			2.3.5
DISTNAME =		mlvpn-$V

CATEGORIES =		net

HOMEPAGE =		https://zehome.github.io/MLVPN/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c ev m sodium

MASTER_SITES =		https://github.com/zehome/MLVPN/releases/download/$V/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS =		devel/libev \
			security/libsodium

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-control \
			--disable-filters
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
			ac_cv_header_valgrind_valgrind_h=no

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mlvpn
	mv ${PREFIX}/share/doc/mlvpn/{mlvpn.conf,mlvpn_updown.sh} \
	    ${PREFIX}/share/examples/mlvpn/

.include <bsd.port.mk>
