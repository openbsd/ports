COMMENT =		socks proxy for use with tor

DISTNAME =		torsocks-2.3.0
REVISION =		0

SHARED_LIBS =		torsocks	2.0 # 0.0

CATEGORIES =		net

HOMEPAGE =		https://gitweb.torproject.org/torsocks.git/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += pthread

SITES=			https://gitweb.torproject.org/torsocks.git/snapshot/

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15

USE_LIBTOOL =		gnu

RUN_DEPENDS =		net/tor

FAKE_FLAGS =		CONFDIR=${PREFIX}/share/examples/torsocks

CONFIGURE_STYLE =	autoreconf autoheader

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/bin/torsocks.in


.include <bsd.port.mk>
