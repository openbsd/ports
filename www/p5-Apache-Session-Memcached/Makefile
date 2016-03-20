# $OpenBSD: Makefile,v 1.8 2016/03/20 19:57:13 naddy Exp $

COMMENT=	Apache::Session storage using memcached

MODULES=	cpan
PKG_ARCH=	*
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
