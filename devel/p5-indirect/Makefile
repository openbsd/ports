# $OpenBSD: Makefile,v 1.11 2019/07/12 20:45:15 sthen Exp $

COMMENT=	lexically warn about using the indirect method call syntax

MODULES=	cpan
DISTNAME=	indirect-0.37
CATEGORIES=	devel
REVISION=	1

CPAN_AUTHOR=	VPIT

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

TEST_DEPENDS=	devel/p5-Devel-Declare

.include <bsd.port.mk>
