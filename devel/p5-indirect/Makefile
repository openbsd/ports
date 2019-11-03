# $OpenBSD: Makefile,v 1.12 2019/11/03 01:40:53 afresh1 Exp $

COMMENT=	lexically warn about using the indirect method call syntax

MODULES=	cpan
DISTNAME=	indirect-0.39
CATEGORIES=	devel

CPAN_AUTHOR=	VPIT

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

TEST_DEPENDS=	devel/p5-Devel-Declare

.include <bsd.port.mk>
