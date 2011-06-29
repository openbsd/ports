# $OpenBSD: Makefile,v 1.4 2011/06/29 09:06:17 jasper Exp $

COMMENT =		network library for games
DISTNAME =		enet-1.3.3

SHARED_LIBS +=  	enet 0.0 # 1.3

CATEGORIES =		net

HOMEPAGE =		http://enet.bespin.org/
MAINTAINER =		Laurent FANIS <laurent@openbsd.org>

# MIT-like
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}/download/

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
