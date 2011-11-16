# $OpenBSD: Makefile,v 1.7 2011/11/16 00:20:09 sthen Exp $

COMMENT =	IP-Transparent Tor Hidden Service Connector

V =		0.2.1
DISTNAME =	onioncat-$V
REVISION =	0
CATEGORIES =	net

HOMEPAGE =	http://www.abenteuerland.at/onioncat/

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =	c pthread

MASTER_SITES =	http://www.cypherpunk.at/ocat/download/Source/$V/

RUN_DEPENDS =	net/tor

SEPARATE_BUILD =	simple
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--mandir=${PREFIX}/man
USE_GROFF =		Yes

.include <bsd.port.mk>
