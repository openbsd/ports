# $OpenBSD: Makefile,v 1.5 2006/12/22 22:12:37 jolan Exp $

COMMENT=	"extra sound files for Asterisk open source PBX"
DISTNAME=	asterisk-sounds-1.2.1
PKGNAME=	${DISTNAME}p3
CATEGORIES=	telephony
MASTER_SITES=	http://ftp.digium.com/pub/asterisk/releases/

HOMEPAGE=	http://www.asterisk.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes
USE_GMAKE=	Yes
PKG_ARCH=	*

MAKE_ENV+=	VARLIBDIR=${PREFIX}/share

.include <bsd.port.mk>
