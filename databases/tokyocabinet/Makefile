# $OpenBSD: Makefile,v 1.1.1.1 2015/10/11 21:39:18 sthen Exp $

SHARED_LIBS=	tokyocabinet	0.0 # .9.7

COMMENT=	key/value database library

DISTNAME=	tokyocabinet-1.4.48
CATEGORIES=	databases

HOMEPAGE=	http://fallabs.com/tokyocabinet/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += bz2 c m pthread z

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE= gnu
USE_GMAKE=	Yes
LIB_DEPENDS=	archivers/bzip2

pre-configure:
	perl -pi -e 's,^MYLIBVER=.*,MYLIBVER=${LIBtokyocabinet_VERSION:R},;' \
	    -e 's,^MYLIBREV=.*,MYLIBREV=${LIBtokyocabinet_VERSION:E},;' \
	    ${WRKSRC}/configure

# otherwise tcutest misc fails
TEST_FLAGS=		TZ=utc

.include <bsd.port.mk>
