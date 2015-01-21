# $OpenBSD: Makefile,v 1.9 2015/01/21 14:43:33 sthen Exp $

COMMENT=	retrieve GET/POST parameters from HTTP requests

MODULES=	cpan
DISTNAME=	HTTP-Request-Params-1.01
REVISION=	1
CATEGORIES=	www

MAINTAINER=	Sam Smith <s@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		mail/p5-Email-MIME>=1.910 \
		www/p5-libwww

.include <bsd.port.mk>
