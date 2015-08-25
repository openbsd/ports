# $OpenBSD: Makefile,v 1.6 2015/08/25 14:03:21 sthen Exp $

COMMENT =		socks proxy for use with tor

DISTNAME =		torsocks-1.2
REVISION =		2

SHARED_LIBS =		torsocks	0.0 # 1.0

CATEGORIES =		net

HOMEPAGE =		https://code.google.com/p/torsocks

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread

MASTER_SITES =		https://torsocks.googlecode.com/files/

RUN_DEPENDS =		net/tor

FAKE_FLAGS =		CONFDIR=${PREFIX}/share/examples/torsocks


CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/torsocks.in

.include <bsd.port.mk>
