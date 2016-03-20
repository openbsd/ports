# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:15 naddy Exp $

COMMENT=        provide static calls that apply to a default instantiation

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-Default-1.51
REVISION=	1
CATEGORIES=     devel

# Perl
PERMIT_PACKAGE_CDROM=   Yes

TEST_DEPENDS=devel/p5-Test-Pod

MAKE_ENV+=		AUTOMATED_TESTING=1

.include <bsd.port.mk>
