# $OpenBSD: Makefile,v 1.7 2012/05/21 13:57:25 giovanni Exp $

COMMENT=	retrieve GET/POST parameters from HTTP requests

MODULES=	cpan
DISTNAME=	HTTP-Request-Params-1.01
REVISION=	1
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <s@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		mail/p5-Email-MIME>=1.910 \
		www/p5-libwww

.include <bsd.port.mk>
