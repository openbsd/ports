# $OpenBSD: Makefile,v 1.8 2019/07/12 20:48:32 sthen Exp $

COMMENT =		link-aggregation VPN software

V =			2.2.2
DISTNAME =		mlvpn-$V
DISTFILES =		${DISTNAME}{$V}.tar.gz
WRKDIST =		${WRKDIR}/MLVPN-$V
REVISION =		3

CATEGORIES =		net

HOMEPAGE =		http://www.mlvpn.fr/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c ev m sodium

MASTER_SITES =		https://github.com/zehome/MLVPN/archive/

LIB_DEPENDS =		devel/libev \
			security/libsodium

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
			ac_cv_header_valgrind_valgrind_h=no

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14
AUTORECONF =		./autogen.sh

post-patch:
	cd ${WRKSRC}; \
	[ -r .tarball-version ] || echo $V > .tarball-version

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mlvpn
	mv ${PREFIX}/share/doc/mlvpn/{mlvpn.conf,mlvpn_updown.sh} \
	    ${PREFIX}/share/examples/mlvpn/

.include <bsd.port.mk>
