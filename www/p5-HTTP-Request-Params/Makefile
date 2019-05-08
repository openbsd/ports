# $OpenBSD: Makefile,v 1.12 2019/05/08 15:44:46 danj Exp $

COMMENT=	retrieve GET/POST parameters from HTTP requests

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTTP-Request-Params-1.02
CATEGORIES=	www
REVISION =	0

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		mail/p5-Email-MIME>=1.910 \
		www/p5-libwww

.include <bsd.port.mk>
