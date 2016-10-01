# $OpenBSD: Makefile,v 1.9 2016/10/01 11:54:16 naddy Exp $

COMMENT =		socks proxy for use with tor

DISTNAME =		torsocks-1.2
REVISION =		4

SHARED_LIBS =		torsocks	0.0 # 1.0

CATEGORIES =		net

HOMEPAGE =		https://code.google.com/p/torsocks

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=torsocks/}

RUN_DEPENDS =		net/tor

FAKE_FLAGS =		CONFDIR=${PREFIX}/share/examples/torsocks


CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/torsocks.in

.include <bsd.port.mk>
