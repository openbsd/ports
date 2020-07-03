# $OpenBSD: Makefile,v 1.14 2020/07/03 21:46:03 sthen Exp $

COMMENT=	retrieve GET/POST parameters from HTTP requests

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTTP-Request-Params-1.02
CATEGORIES=	www
REVISION =	1

# Same as Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		mail/p5-Email-MIME>=1.910 \
		www/p5-libwww

.include <bsd.port.mk>
