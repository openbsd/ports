# $OpenBSD: Makefile,v 1.12 2016/03/20 19:56:14 naddy Exp $

COMMENT= 	pure perl client interface to memcached

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Cache-Memcached-1.30
CATEGORIES=	devel
HOMEPAGE=	http://www.danga.com/memcached/

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-String-CRC32

TEST_DEPENDS=	misc/memcached


pre-test:
	${LOCALBASE}/bin/memcached -d -l 127.0.0.1 -p 11211

post-test:
	pkill memcached

.include <bsd.port.mk>
