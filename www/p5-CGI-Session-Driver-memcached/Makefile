# $OpenBSD: Makefile,v 1.1.1.1 2014/08/19 10:43:48 henning Exp $

COMMENT=	CGI::Session driver for memcached

MODULES=	cpan
DISTNAME=	CGI-Session-Driver-memcached-0.04
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS= www/p5-CGI-Session \
		devel/p5-Cache-Memcached

.include <bsd.port.mk>
