COMMENT =		SOCKS proxy for use with Tor

V =			2.4.0
DISTNAME =		torsocks-v${V}
PKGNAME =		${DISTNAME:S/v//}

SHARED_LIBS =		torsocks	2.0 # 0.0

CATEGORIES =		net

HOMEPAGE =		https://gitlab.torproject.org/tpo/core/torsocks

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += pthread

SITES=			https://gitlab.torproject.org/tpo/core/torsocks/-/archive/v${V}/

AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16

USE_LIBTOOL =		gnu

RUN_DEPENDS =		net/tor

FAKE_FLAGS =		CONFDIR=${PREFIX}/share/examples/torsocks

CONFIGURE_STYLE =	autoreconf autoheader

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/bin/torsocks.in

.include <bsd.port.mk>
