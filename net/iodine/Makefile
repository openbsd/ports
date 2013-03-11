# $OpenBSD: Makefile,v 1.12 2013/03/11 11:35:47 espie Exp $

COMMENT=		tunnel IPv4 data through DNS

DISTNAME=		iodine-0.5.2
REVISION=		0
CATEGORIES=		net

HOMEPAGE=		http://code.kryo.se/iodine/

# ISC
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB=		c z

FAKE_FLAGS=		prefix=$(PREFIX) mandir=$(PREFIX)/man

USE_GROFF =		Yes
MAKE_ENV=		CC=${CC}
TEST_DEPENDS=	devel/check
TEST_TARGET=		test

.include <bsd.port.mk>
