# $OpenBSD: Makefile,v 1.15 2019/07/12 20:50:55 sthen Exp $

COMMENT=	setup CGI environment from HTTP::Request

DISTNAME=	HTTP-Request-AsCGI-1.2
REVISION=	1
CATEGORIES=	www

# Same as Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	devel/p5-Class-Accessor \
		www/p5-libwww

.include <bsd.port.mk>
