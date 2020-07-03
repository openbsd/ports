# $OpenBSD: Makefile,v 1.13 2020/07/03 21:45:20 sthen Exp $

COMMENT=	lexically warn about using the indirect method call syntax

MODULES=	cpan
DISTNAME=	indirect-0.39
CATEGORIES=	devel
REVISION=	0

CPAN_AUTHOR=	VPIT

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

TEST_DEPENDS=	devel/p5-Devel-Declare

.include <bsd.port.mk>
