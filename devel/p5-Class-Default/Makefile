# $OpenBSD: Makefile,v 1.10 2019/07/12 21:02:15 sthen Exp $

COMMENT=        provide static calls that apply to a default instantiation

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-Default-1.51
REVISION=	1
CATEGORIES=     devel

# Perl
PERMIT_PACKAGE=	Yes

TEST_DEPENDS=devel/p5-Test-Pod

MAKE_ENV+=		AUTOMATED_TESTING=1

.include <bsd.port.mk>
