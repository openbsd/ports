# $OpenBSD: Makefile,v 1.2 2016/03/20 19:57:14 naddy Exp $

COMMENT=	CGI::Session driver for memcached

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	CGI-Session-Driver-memcached-0.04
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS= www/p5-CGI-Session \
		devel/p5-Cache-Memcached

.include <bsd.port.mk>
