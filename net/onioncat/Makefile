# $OpenBSD: Makefile,v 1.11 2014/11/02 18:41:00 naddy Exp $

COMMENT =	IP-Transparent Tor Hidden Service Connector

V =		0.2.1
DISTNAME =	onioncat-$V
REVISION =	0
CATEGORIES =	net

HOMEPAGE =	http://www.abenteuerland.at/onioncat/

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	c pthread

MASTER_SITES =	http://www.cypherpunk.at/ocat/download/Source/$V/

RUN_DEPENDS =	net/tor

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--mandir=${PREFIX}/man
# Do not pick up gawk or mawk
CONFIGURE_ENV =		AWK=awk

.include <bsd.port.mk>
