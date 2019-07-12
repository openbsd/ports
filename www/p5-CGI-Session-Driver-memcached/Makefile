# $OpenBSD: Makefile,v 1.3 2019/07/12 20:50:50 sthen Exp $

COMMENT=	CGI::Session driver for memcached

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	CGI-Session-Driver-memcached-0.04
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS= www/p5-CGI-Session \
		devel/p5-Cache-Memcached

.include <bsd.port.mk>
