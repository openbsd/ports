COMMENT=		tunnel IPv4 data through DNS

DISTNAME=		iodine-0.7.0
CATEGORIES=		net
REVISION=		7

HOMEPAGE=		https://code.kryo.se/iodine/

MAINTAINER=		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# ISC
PERMIT_PACKAGE=		Yes

MASTER_SITES=		${HOMEPAGE}

DEBUG_PACKAGES=		${BUILD_PACKAGES}

WANTLIB=		c z

FAKE_FLAGS=		prefix=$(PREFIX) mandir=$(PREFIX)/man

MAKE_ENV=		CC=${CC}
TEST_DEPENDS=		devel/check
TEST_TARGET=		test

.include <bsd.port.mk>
