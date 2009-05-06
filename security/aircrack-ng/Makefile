# $OpenBSD: Makefile,v 1.1.1.1 2009/05/06 20:39:29 kili Exp $

COMMENT=		'802.11 WEP and WPA-PSK keys cracking program'
DISTNAME=		aircrack-ng-1.0-rc3
CATEGORIES=		security

MASTER_SITES= 		http://download.aircrack-ng.org/
HOMEPAGE=		http://www.aircrack-ng.org/

MAINTAINER=		Benoit Lecocq <blq@arcane-labs.net>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=		c pthread crypto ssl z

LIB_DEPENDS=		sqlite3::databases/sqlite3

USE_GMAKE=		Yes
MAKE_ENV+=		SQLITE=true UNSTABLE=true
MAKE_FLAGS+=		CC=${CC}

NO_REGRESS=		Yes

.include <bsd.port.mk>
