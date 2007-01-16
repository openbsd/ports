# $OpenBSD: Makefile,v 1.2 2007/01/16 17:52:07 simon Exp $

COMMENT=	"retrieve GET/POST parameters from HTTP requests"

MODULES=	cpan
DISTNAME=	HTTP-Request-Params-1.01
CATEGORIES=	www

MAINTAINER=	Sam Smith <s@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::mail/p5-Email-MIME-Modifier \
		::www/p5-libwww

.include <bsd.port.mk>
