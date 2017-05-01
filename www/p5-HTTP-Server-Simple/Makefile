# $OpenBSD: Makefile,v 1.15 2017/05/01 20:26:16 benoit Exp $

COMMENT=	simple standalone HTTP server

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTTP-Server-Simple-0.52
CATEGORIES=	www

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =	www/p5-CGI
BUILD_DEPENDS =	${RUN_DEPENDS}
TEST_DEPENDS=	devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage \
			www/p5-URI

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	ex

.include <bsd.port.mk>
