# $OpenBSD: Makefile,v 1.5 2013/03/11 11:44:44 espie Exp $

COMMENT=	Apache::Session storage using memcached

MODULES=	cpan
DISTNAME=	Apache-Session-Memcached-0.03
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Jim Razmus II <jim@bonetruck.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Apache-Session \
		devel/p5-Cache-Memcached

# regression tests require a running memcached daemon.
TEST_DEPENDS=misc/memcached

.include <bsd.port.mk>
