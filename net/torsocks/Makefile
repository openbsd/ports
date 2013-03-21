# $OpenBSD: Makefile,v 1.3 2013/03/21 08:46:35 ajacoutot Exp $

COMMENT =		socks proxy for use with tor

DISTNAME =		torsocks-1.2

SHARED_LIBS =		torsocks	0.0 # 1.0

CATEGORIES =		net

HOMEPAGE =		http://code.google.com/p/torsocks

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://torsocks.googlecode.com/files/

RUN_DEPENDS =		net/tor

FAKE_FLAGS =		CONFDIR=${PREFIX}/share/examples/torsocks


CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/torsocks.in

.include <bsd.port.mk>
