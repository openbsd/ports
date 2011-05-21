# $OpenBSD: Makefile,v 1.5 2011/05/21 11:19:24 fgsch Exp $

COMMENT=		802.11 WEP and WPA-PSK keys cracking program
DISTNAME=		aircrack-ng-1.1
CATEGORIES=		security

HOMEPAGE=		http://www.aircrack-ng.org/

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=		c pthread crypto ssl z

MASTER_SITES=		http://download.aircrack-ng.org/

WANTLIB +=		sqlite3
LIB_DEPENDS=		databases/sqlite3

USE_GMAKE=		Yes
USE_GROFF =		Yes
MAKE_ENV+=		SQLITE=true UNSTABLE=true
MAKE_FLAGS+=		CC=${CC}

NO_REGRESS=		Yes

post-extract:
	perl -i -pe 's/\r\n/\n/' ${WRKSRC}/src/osdep/byteorder.h

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/airodump-ng.h

.include <bsd.port.mk>
