# $OpenBSD: Makefile,v 1.2 2010/10/19 08:02:54 espie Exp $

COMMENT=	Apache::Session storage using memcached

MODULES=	cpan
DISTNAME=	Apache-Session-Memcached-0.03
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Jim Razmus II <jim@bonetruck.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-Apache-Session \
		::devel/p5-Cache-Memcached

# regression tests require a running memcached daemon.
REGRESS_DEPENDS=::misc/memcached

.include <bsd.port.mk>
