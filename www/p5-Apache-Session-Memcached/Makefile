# $OpenBSD: Makefile,v 1.1.1.1 2007/10/13 19:50:12 steven Exp $

COMMENT=	Apache::Session storage using memcached

MODULES=	cpan
DISTNAME=	Apache-Session-Memcached-0.03
CATEGORIES=	www

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
