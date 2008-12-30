# $OpenBSD: Makefile,v 1.1.1.1 2008/12/30 13:56:39 pirofti Exp $

COMMENT =	IP-Transparent Tor Hidden Service Connector

DISTNAME =	onioncat-0.1.8
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

.include <bsd.port.mk>
