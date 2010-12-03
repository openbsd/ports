# $OpenBSD: Makefile,v 1.6 2010/12/03 11:46:53 ajacoutot Exp $

COMMENT=	retrieve GET/POST parameters from HTTP requests

MODULES=	cpan
DISTNAME=	HTTP-Request-Params-1.01
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <s@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		mail/p5-Email-MIME-Modifier \
		www/p5-libwww

.include <bsd.port.mk>
