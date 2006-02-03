# $OpenBSD: Makefile,v 1.1.1.1 2006/02/03 16:35:04 ian Exp $

COMMENT=	"extra sound files for Asterisk open source PBX"
# Digium do not always keep V in sync with Asterisk port, don't sync blindly
V=		1.2.1
DISTNAME=	asterisk-sounds-${V}
CATEGORIES=	telephony
MASTER_SITES=	ftp://ftp.digium.com/pub/asterisk/

HOMEPAGE=	http://www.asterisk.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_BUILD=	Yes
CONFIGURE_STYLE=none
NO_REGRESS=	Yes
USE_GMAKE=	Yes

BUILD_DEPENDS=	:asterisk-1.2.*:telephony/asterisk

MAKE_ENV+=	VARLIBDIR=${PREFIX}/share

.include <bsd.port.mk>
