# $OpenBSD: Makefile,v 1.2 2015/10/10 13:00:04 sthen Exp $

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

# Use bundled libtool for the tests only; otherwise they fail to link.
TEST_FLAGS=	LIBTOOL="/bin/sh ../../libtool"
TEST_IS_INTERACTIVE=	Yes

pre-test:
	@if ! [ -d ${WRKSRC}/test/patterns ]; then echo; echo \
	    ">>> Tests require an additional download. Please fetch"; echo \
	    ">>> http://www.belledonne-communications.com/downloads/bcg729-patterns.zip"; echo \
	    ">>> and unzip it in ${WRKSRC}/test"; \
	    echo; exit 1; fi

.include <bsd.port.mk>
