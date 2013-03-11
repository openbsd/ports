# $OpenBSD: Makefile,v 1.2 2013/03/11 11:35:57 espie Exp $

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

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/torsocks.in

.include <bsd.port.mk>
