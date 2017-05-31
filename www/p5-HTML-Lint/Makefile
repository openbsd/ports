# $OpenBSD: Makefile,v 1.17 2017/05/31 11:42:57 benoit Exp $

COMMENT=		check for HTML errors in a string or file

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		HTML-Lint-2.26
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		www/p5-HTML-Parser
TEST_DEPENDS=		devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
