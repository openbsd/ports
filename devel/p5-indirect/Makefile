# $OpenBSD: Makefile,v 1.10 2019/05/08 21:36:07 danj Exp $

COMMENT=	lexically warn about using the indirect method call syntax

MODULES=	cpan
DISTNAME=	indirect-0.37
CATEGORIES=	devel
REVISION=	1

CPAN_AUTHOR=	VPIT

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl

TEST_DEPENDS=	devel/p5-Devel-Declare

.include <bsd.port.mk>
