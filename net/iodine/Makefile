COMMENT=		tunnel IPv4 data through DNS

# XXX iodine-0.8.0 client/server communication seems broken
PORTROACH=		skipv:0.8.0

DISTNAME=		iodine-0.7.0
CATEGORIES=		net
REVISION=		8

HOMEPAGE=		https://code.kryo.se/iodine/

MAINTAINER=		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# ISC
PERMIT_PACKAGE=		Yes

SITES=			${HOMEPAGE}

DEBUG_PACKAGES=		${BUILD_PACKAGES}

WANTLIB=		c z

FAKE_FLAGS=		prefix=$(PREFIX) mandir=$(PREFIX)/man

MAKE_ENV=		CC=${CC}
TEST_DEPENDS=		devel/check
TEST_TARGET=		test

.include <bsd.port.mk>
