# $OpenBSD: Makefile,v 1.16 2015/10/24 09:18:13 ajacoutot Exp $

COMMENT=		tunnel IPv4 data through DNS

DISTNAME=		iodine-0.7.0
CATEGORIES=		net
REVISION=		1

HOMEPAGE=		http://code.kryo.se/iodine/

# ISC
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB=		c z

FAKE_FLAGS=		prefix=$(PREFIX) mandir=$(PREFIX)/man

MAKE_ENV=		CC=${CC}
TEST_DEPENDS=		devel/check
TEST_TARGET=		test

.include <bsd.port.mk>
