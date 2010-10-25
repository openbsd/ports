# $OpenBSD: Makefile,v 1.4 2010/10/25 17:37:52 pirofti Exp $

COMMENT =	IP-Transparent Tor Hidden Service Connector

DISTNAME =	onioncat-0.2.1
CATEGORIES =	net

HOMEPAGE =	http://www.abenteuerland.at/onioncat/

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =	c pthread

MASTER_SITES =	http://www.cypherpunk.at/ocat/download/Source/stable/

RUN_DEPENDS =	::net/tor

SEPARATE_BUILD =	simple
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--mandir=${PREFIX}/man
USE_GROFF =	Yes

.include <bsd.port.mk>
