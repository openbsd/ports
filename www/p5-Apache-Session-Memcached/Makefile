# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:55 sthen Exp $

COMMENT=	Apache::Session storage using memcached

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Apache-Session-Memcached-0.03
REVISION=	3
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-Apache-Session \
		devel/p5-Cache-Memcached

# regression tests require a running memcached daemon.
TEST_DEPENDS=misc/memcached

.include <bsd.port.mk>
