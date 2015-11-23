# $OpenBSD: Makefile,v 1.14 2015/11/23 14:07:10 ajacoutot Exp $

COMMENT=		check for HTML errors in a string or file

MODULES=		cpan
DISTNAME=		HTML-Lint-2.22
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		www/p5-HTML-Parser
TEST_DEPENDS=		devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
