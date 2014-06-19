# $OpenBSD: Makefile,v 1.14 2014/06/19 22:45:56 chris Exp $

COMMENT=		tunnel IPv4 data through DNS

DISTNAME=		iodine-0.7.0
CATEGORIES=		net

HOMEPAGE=		http://code.kryo.se/iodine/

# ISC
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB=		c z

FAKE_FLAGS=		prefix=$(PREFIX) mandir=$(PREFIX)/man

MAKE_ENV=		CC=${CC}
TEST_DEPENDS=	devel/check
TEST_TARGET=		test

.include <bsd.port.mk>
