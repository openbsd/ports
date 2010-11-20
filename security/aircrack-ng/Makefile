# $OpenBSD: Makefile,v 1.4 2010/11/20 17:22:43 espie Exp $

COMMENT=		'802.11 WEP and WPA-PSK keys cracking program'
DISTNAME=		aircrack-ng-1.0-rc3
REVISION =		0
CATEGORIES=		security

HOMEPAGE=		http://www.aircrack-ng.org/

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=		c pthread crypto ssl z

MASTER_SITES=		http://www.arcane-labs.net/download/OpenBSD/

WANTLIB +=		sqlite3
LIB_DEPENDS=		databases/sqlite3

USE_GMAKE=		Yes
USE_GROFF =		Yes
MAKE_ENV+=		SQLITE=true UNSTABLE=true
MAKE_FLAGS+=		CC=${CC}

NO_REGRESS=		Yes

.include <bsd.port.mk>
