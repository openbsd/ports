# $OpenBSD: Makefile,v 1.1.1.1 2015/10/10 12:33:16 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	software G729A encoder and decoder library

DISTNAME=	bcg729-1.0.0

SHARED_LIBS +=	bcg729                    0.0 # unknown

CATEGORIES=	telephony audio

HOMEPAGE=	http://www.linphone.org/technical-corner/bcg729/overview

# Dual: GPLv2(only) or commercial
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://download-mirror.savannah.gnu.org/releases/linphone/plugins/sources/

CONFIGURE_STYLE=	gnu

# there are tests, but need a separate (35MB) download, and fixing
NO_TEST=	Yes

.include <bsd.port.mk>
