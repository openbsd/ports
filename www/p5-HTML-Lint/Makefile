# $OpenBSD: Makefile,v 1.16 2016/03/20 19:57:18 naddy Exp $

COMMENT=		check for HTML errors in a string or file

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		HTML-Lint-2.22
REVISION=		0
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		www/p5-HTML-Parser
TEST_DEPENDS=		devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
