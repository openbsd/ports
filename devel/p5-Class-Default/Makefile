# $OpenBSD: Makefile,v 1.8 2015/11/05 19:08:56 jca Exp $

COMMENT=        provide static calls that apply to a default instantiation

MODULES=	cpan
DISTNAME=	Class-Default-1.51
REVISION=	1
CATEGORIES=     devel

# Perl
PERMIT_PACKAGE_CDROM=   Yes

TEST_DEPENDS=devel/p5-Test-Pod

MAKE_ENV+=		AUTOMATED_TESTING=1

.include <bsd.port.mk>
