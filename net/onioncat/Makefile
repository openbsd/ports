# $OpenBSD: Makefile,v 1.16 2020/06/21 12:36:16 sthen Exp $

COMMENT =	IP-Transparent Tor/I2P Hidden Service Connector

V =		0.3.8
DISTNAME =	onioncat-$V
CATEGORIES =	net

HOMEPAGE =	https://www.onioncat.org/

MAINTAINER=	Paul Irofti <paul@irofti.net>

# GPLv3
PERMIT_PACKAGE =		Yes

WANTLIB =	c pthread

MASTER_SITES =	https://www.cypherpunk.at/ocat/download/Source/${V:R}/

RUN_DEPENDS =	net/tor

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
