# $OpenBSD: Makefile,v 1.4 2020/07/03 21:45:56 sthen Exp $

COMMENT=	CGI::Session driver for memcached

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	CGI-Session-Driver-memcached-0.04
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS= www/p5-CGI-Session \
		devel/p5-Cache-Memcached

.include <bsd.port.mk>
