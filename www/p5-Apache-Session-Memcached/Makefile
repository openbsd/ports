# $OpenBSD: Makefile,v 1.7 2015/01/21 14:42:32 sthen Exp $

COMMENT=	Apache::Session storage using memcached

MODULES=	cpan
DISTNAME=	Apache-Session-Memcached-0.03
REVISION=	1
CATEGORIES=	www

MAINTAINER=	Jim Razmus II <jim@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Apache-Session \
		devel/p5-Cache-Memcached

# regression tests require a running memcached daemon.
TEST_DEPENDS=misc/memcached

.include <bsd.port.mk>
