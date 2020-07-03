# $OpenBSD: Makefile,v 1.11 2020/07/03 21:44:42 sthen Exp $

COMMENT=        provide static calls that apply to a default instantiation

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-Default-1.51
REVISION=	2
CATEGORIES=     devel

# Perl
PERMIT_PACKAGE=	Yes

TEST_DEPENDS=devel/p5-Test-Pod

MAKE_ENV+=		AUTOMATED_TESTING=1

.include <bsd.port.mk>
