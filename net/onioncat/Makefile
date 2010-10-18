# $OpenBSD: Makefile,v 1.3 2010/10/18 18:36:51 espie Exp $

COMMENT =	IP-Transparent Tor Hidden Service Connector

DISTNAME =	onioncat-0.1.12.r493
CATEGORIES =	net

HOMEPAGE =	http://www.abenteuerland.at/onioncat/

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =	c pthread

MASTER_SITES =	${HOMEPAGE}download/

SEPARATE_BUILD =	simple
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--mandir=${PREFIX}/man
USE_GROFF =	Yes

.include <bsd.port.mk>
