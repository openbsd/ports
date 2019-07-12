# $OpenBSD: Makefile,v 1.3 2019/07/12 20:44:02 sthen Exp $

SHARED_LIBS=	tokyocabinet	0.0 # .9.7

COMMENT=	key/value database library

DISTNAME=	tokyocabinet-1.4.48
REVISION=	0
CATEGORIES=	databases

HOMEPAGE=	http://fallabs.com/tokyocabinet/

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += bz2 c m pthread z

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE= gnu
USE_GMAKE=	Yes
LIB_DEPENDS=	archivers/bzip2

pre-configure:
	perl -pi -e 's,^MYLIBVER=.*,MYLIBVER=${LIBtokyocabinet_VERSION:R},;' \
	    -e 's,^MYLIBREV=.*,MYLIBREV=${LIBtokyocabinet_VERSION:E},;' \
	    ${WRKSRC}/configure
	perl -pi -e 's,srand\(,srand_deterministic(,' ${WRKSRC}/*test.c

# otherwise tcutest misc fails
TEST_FLAGS=		TZ=utc

# there are various other test failures, some of which indicate
# possible cache coherency problems. tokyocabinet has code which is
# supposed to work on non-UBC systems, however some of the failures
# suggest that this isn't working correctly on OpenBSD.

.include <bsd.port.mk>
