# $OpenBSD: Makefile,v 1.11 2013/03/11 11:44:46 espie Exp $

COMMENT=	simple standalone HTTP server

MODULES=	cpan
DISTNAME=	HTTP-Server-Simple-0.44
CATEGORIES=	www

# perl
PERMIT_PACKAGE_CDROM=	Yes

TEST_DEPENDS=	devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage \
			www/p5-URI

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	ex

.include <bsd.port.mk>
