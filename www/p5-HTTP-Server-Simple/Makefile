# $OpenBSD: Makefile,v 1.10 2011/04/14 07:21:27 jasper Exp $

COMMENT=	simple standalone HTTP server

MODULES=	cpan
DISTNAME=	HTTP-Server-Simple-0.44
CATEGORIES=	www

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage \
			www/p5-URI

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	ex

.include <bsd.port.mk>
