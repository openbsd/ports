# $OpenBSD: Makefile,v 1.12 2013/03/11 10:50:22 espie Exp $

COMMENT=        forbids warnings while testing

MODULES=	cpan
DISTNAME=	Test-NoWarnings-1.04
CATEGORIES=     devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Test-Tester>=0.107

TEST_DEPENDS=devel/p5-Devel-StackTrace

.include <bsd.port.mk>
