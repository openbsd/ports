# $OpenBSD: Makefile,v 1.2 2006/02/06 16:19:16 jolan Exp $

COMMENT=	"extra sound files for Asterisk open source PBX"
DISTNAME=	asterisk-sounds-1.2.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	telephony
MASTER_SITES=	ftp://ftp.digium.com/pub/asterisk/

HOMEPAGE=	http://www.asterisk.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes
USE_GMAKE=	Yes

MAKE_ENV+=	VARLIBDIR=${PREFIX}/share

.include <bsd.port.mk>
