# $OpenBSD: Makefile,v 1.14 2016/03/20 19:57:20 naddy Exp $

COMMENT=	setup CGI environment from HTTP::Request

DISTNAME=	HTTP-Request-AsCGI-1.2
REVISION=	1
CATEGORIES=	www

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	devel/p5-Class-Accessor \
		www/p5-libwww

.include <bsd.port.mk>
