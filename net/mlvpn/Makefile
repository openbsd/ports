# $OpenBSD: Makefile,v 1.5 2017/07/05 10:22:05 sthen Exp $

COMMENT =		link-aggregation VPN software

V =			2.2.2
DISTNAME =		mlvpn-$V
DISTFILES =		${DISTNAME}{$V}.tar.gz
WRKDIST =		${WRKDIR}/MLVPN-$V
REVISION =		2

CATEGORIES =		net

HOMEPAGE =		http://www.mlvpn.fr/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c ev m sodium

MASTER_SITES =		https://github.com/zehome/MLVPN/archive/

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS =		devel/libev \
			security/libsodium

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
			ac_cv_header_valgrind_valgrind_h=no

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14

post-patch:
	cd ${WRKSRC}; \
	[ -r .tarball-version ] || echo $V > .tarball-version; \
	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mlvpn
	mv ${PREFIX}/share/doc/mlvpn/{mlvpn.conf,mlvpn_updown.sh} \
	    ${PREFIX}/share/examples/mlvpn/

.include <bsd.port.mk>
