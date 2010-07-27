# $OpenBSD: Makefile,v 1.8 2010/07/27 09:27:24 dcoppa Exp $

COMMENT=	extra sound files for Asterisk open source PBX
DISTNAME=	asterisk-sounds-1.2.1
REVISION=	3
CATEGORIES=	telephony

MASTER_SITES=	http://downloads.asterisk.org/pub/telephony/asterisk/old-releases/

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
