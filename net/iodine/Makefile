# $OpenBSD: Makefile,v 1.19 2018/09/04 12:46:17 espie Exp $

COMMENT=		tunnel IPv4 data through DNS

DISTNAME=		iodine-0.7.0
CATEGORIES=		net
REVISION=		4

HOMEPAGE=		http://code.kryo.se/iodine/

MAINTAINER=		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB=		c z

FAKE_FLAGS=		prefix=$(PREFIX) mandir=$(PREFIX)/man

MAKE_ENV=		CC=${CC}
TEST_DEPENDS=		devel/check
TEST_TARGET=		test

.include <bsd.port.mk>
